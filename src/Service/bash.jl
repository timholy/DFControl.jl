function bash_jobstate(jobdir::String)
    job = load_job(jobdir)
    n = now()
    u = username()
    i = last_running_calculation(jobdir)
    i === nothing && return false
    l = job[i]
    codeexec = l.exec.exec
    try
        pids = parse.(Int, split(read(`pgrep $codeexec`, String)))
        if isempty(pids)
            return (-1, Jobs.Completed)
        end
        pwds = map(x -> abspath(split(strip(read(`pwdx $x`, String)))[end]), pids)
        id = findfirst(isequal(abspath(job)), pwds)
        if id === nothing
            return (-1, Jobs.Completed)
        else
            return (pids[id], Jobs.Running)
        end
    catch
        return (-1, Jobs.Completed)
    end
end

function bash_queue!(q, init)
    if init
        jobdirs = filter(exists_job, readlines(RUNNING_JOBS_FILE))
    else
        jobdirs = keys(q)
    end
    to_running = String[]
    for j in jobdirs
        info = bash_jobstate(j)
        q[j] = info
        if info[2] == Jobs.Running
            push!(to_running, j)
        end
    end
    write(RUNNING_JOBS_FILE, join(to_running, "\n"))
    return q
end

function bash_submit(j::String)
    cd(j)
    run(Cmd(`bash job.tt`, detach=true), wait=false)
    open(RUNNING_JOBS_FILE, "a") do f
        write(f, j * "\n")
    end
    return (-1, Jobs.Submitted)
end
        
