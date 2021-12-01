function main_loop()
    running_jobs = ispath(RUNNING_JOBS_FILE) ? filter(!isempty, readlines(RUNNING_JOBS_FILE)) : String[]
    job_dirs_procs = Dict{String,Task}()
    for j in running_jobs
        if exists_job(j)
            tjob = load_job(j)
            job_dirs_procs[j] = spawn_worker(tjob)
        end
    end
    while true
        handle_workflow_runners!(job_dirs_procs)
        handle_job_submission!(job_dirs_procs)
        sleep(SLEEP_TIME)
    end
end

function spawn_worker(jobdir::String)
    # TODO: implement workflows again
    # if ispath(joinpath(jobdir, ".workflow/environment.jld2"))
    #     env_dat = JLD2.load(joinpath(jobdir, ".workflow/environment.jld2"))
    #     proc = addprocs(1; exeflags = "--project=$(env_dat["project"])")[1]
    #     using_expr = Base.Meta.parse("""using $(join(env_dat["modules"], ", "))""")
    #     ctx_path = joinpath(jobdir, ".workflow/ctx.jld2")

    #     Distributed.remotecall_eval(Distributed.Main, proc, using_expr)
        # f = remotecall(DFControl.run_queue, proc, job, JLD2.load(ctx_path)["ctx"];
                       # sleep_time = SLEEP_TIME)
        # return proc, f
    # else
    return Threads.@spawn begin
        job = load_job(jobdir) 
       
        while isrunning(job.dir)
            sleep(10)
        end
        outputdata(abspath(job), map(x->x.name, job.calculations))
    end
end

function handle_workflow_runners!(job_dirs_procs)
    to_rm = String[]
    for (k, t) in job_dirs_procs
        if istaskdone(t)
            try
                t_ = fetch(t)
                @info """Workflow for job directory $(k) done."""
                push!(to_rm, k)
            catch e
                @warn """Workflow in job directory $(k) failed.
                See $(joinpath(k, ".workflow/error.log")) for more info."""
                push!(to_rm, k)
            end
        end
    end
    if !isempty(to_rm)
        pop!.((job_dirs_procs,), to_rm)
        save_running_jobs(job_dirs_procs)
    end
end

save_running_jobs(job_dirs_procs) = write(RUNNING_JOBS_FILE, join(keys(job_dirs_procs), "\n"))

# Jobs are submitted by the daemon, using supplied job jld2 from the caller (i.e. another machine)
# Additional files are packaged with the job
function handle_job_submission!(job_dirs_procs)
    ncpus = length(Sys.cpu_info())
    nprocs = length(job_dirs_procs)
    if ncpus > nprocs # work can be done
        free_cpus = ncpus - nprocs # how much work can be done
        if ispath(PENDING_JOBS_FILE)
            lines = filter(!isempty, readlines(PENDING_JOBS_FILE))
            write(PENDING_JOBS_FILE, "")
            if !isempty(lines)
                if length(lines) > free_cpus
                    pending_job_submissions = lines[1:free_cpus]
                    open(PENDING_JOBS_FILE, "w") do f
                        for l in lines[(ncpus - length(job_dirs_procs))+1:end]
                            write(f, l * "\n")
                        end
                    end
                else
                    pending_job_submissions = lines
                end
                for j in pending_job_submissions
                    curdir = pwd()
                    s = DFC.Server("localhost")
                    cd(j)
                    if s.scheduler == Servers.Bash
                        run(`bash job.tt`)
                    else
                        run(`sbatch job.tt`)
                    end
                    cd(curdir)
                    job_dirs_procs[j] = spawn_worker(j)
                end
            end
        end
    end
end

function run_queue(job::Job, ctx::Dict; sleep_time = 10)
    logger = workflow_logger(job)
    with_logger(logger) do
        qd = queued_dir(job)
        queued_steps = readdir(qd)
        order = sortperm(parse.(Int, getindex.(splitext.(queued_steps), 1)))
        fd = finished_dir(job)
        if !ispath(qd) || isempty(queued_steps)
            return
        end
        if !ispath(fd)
            mkpath(fd)
        else
            for f in readdir(fd)
                rm(joinpath(fd, f))
            end
        end

        for f in queued_steps[order]
            step_file = joinpath(qd, f)
            t = include(step_file)
            @eval $(t)($(job), $(ctx))
            JLD2.save(joinpath(job, ".workflow/ctx.jld2"), "ctx", ctx)
            while isrunning(job)
                sleep(sleep_time)
            end
            Service.outputdata(job)
            mv(step_file, joinpath(fd, f); force = true)
        end
    end
    return true
end
