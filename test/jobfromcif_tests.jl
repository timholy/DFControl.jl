using DFControl, Test, LinearAlgebra

testdir = joinpath(dirname(dirname(pathof(DFControl))), "test")
testjobpath = joinpath(testdir, "testassets", "test_job")
@testset "initial creation" begin
    if ispath(testjobpath)
        rm(testjobpath, recursive=true)
    end

    name = "Ni"
    dir = testjobpath
    bin_dir = joinpath(homedir(), "Software/qe/bin")
    pw_exec = Exec("pw.x", bin_dir, :nk => 4)

    pseudoset = :test

    header = ["#SBATCH -N 1"]

    str = Structure(joinpath(testdir, "testassets/Ni.cif"))

    calculations = [Calculation{QE}("vcrelax", :calculation => "vc-relax", :verbosity => "high", :ion_dynamics => "bfgs", :cell_dynamics => "bfgs";
                                      exec = pw_exec,
                                      data = [InputData(:k_points, :automatic,
                                                        [6, 6, 6, 1, 1, 1])]),
                    Calculation{QE}(; name = "scf", exec = pw_exec,
                                      flags = Dict(:calculation => "scf", :verbosity => "high"),
                                      data = [InputData(:k_points, :automatic,
                                                        [4, 4, 4, 1, 1, 1])])]
    job = Job(name, str, calculations, :ecutwfc => 40.0, :occupations => "smearing", :degauss=>0.01, :conv_thr => 1e-6, :nbnd => 18;
                #kwargs
                header = header, dir = dir, server="localhost_test")


    set_pseudos!(job, :test)


    set_kpoints!(job["scf"], (6, 6, 6, 1, 1, 1))

    job.structure[element(:Ni)][1].magnetization = Vec3(0,0,0.1)
    job.structure[element(:Ni)][1].dftu.U = 4.0

    push!(job, Calculations.gencalc_bands(job["scf"], Structures.high_symmetry_kpath(job.structure, 20)))
    push!(job, Calculations.gencalc_nscf(job["scf"], (5,5,5)))

    push!(job, Calculations.gencalc_projwfc(job["nscf"], 2.0, 20.0, 0.1))

    @test all(values(job[:ecutwfc]) .== 40.0)
    for c in job.calculations
        pop!(c, :ecutwfc, nothing)
    end

    save(job)
    @test all(values(job[:ecutwfc]) .== 41.0)
    @test all(values(job[:ecutrho]) .== 236.0)
    @test job.version == 1
    @test length(job) == 5
    @test data(job["scf"], :k_points).data == [6,6,6,1,1,1]
    @test job["nscf"].exec == pw_exec
    @test job["projwfc"].exec == Exec("projwfc.x", pw_exec.dir)
    @test show(job) == nothing
    job[:ecutwfc] = 40.0
    for c in job.calculations
        pop!(c, :ecutrho, nothing)
    end
    save(job)

    job2 = Job(job.dir, "localhost_test")
    for (c1, c2) in zip(job2.calculations, job.calculations)
        @test c2 == c1
    end
    @test job2.structure == job.structure
end

refjobpath =joinpath(testdir, "testassets", "reference_job")

@testset "reference comparison" begin
    job = Job(testjobpath, "localhost_test")
    orig_job = deepcopy(job)
    job.structure = Structures.create_supercell(job.structure, 1, 0, 0, make_afm = true)
    
    job2 = Job(refjobpath, "localhost_test")
    @test job2.structure == job.structure
    
    for f in DFControl.Utils.searchdir(job2, ".out")
        cp(f, joinpath(job, splitdir(f)[2]), force=true)
    end
    for f in DFControl.Utils.searchdir(job2, "dos")
        cp(f, joinpath(job, splitdir(f)[2]), force=true)
    end

    for a in job.structure.atoms
        a.projections = [Projection("s"), Projection("p"), Projection("d")]
    end
    wanexec = Exec("wannier90.x", joinpath(homedir(), "Software/wannier90"))
    append!(job, Calculations.gencalc_wan(job, 0.000011, wanexec = wanexec))
    for (c1, c2) in zip(job2.calculations, job.calculations)
        @test c2 == c1
    end
    save(job)
    @test !ispath(joinpath(job, "scf.out"))
    job = Job(testjobpath, "localhost_test")
    
    for (c1, c2) in zip(job2.calculations, job.calculations)
        @test c2 == c1
    end
    save(orig_job)
    for f in DFControl.Utils.searchdir(job2, ".out")
        cp(f, joinpath(job, splitdir(f)[2]), force=true)
    end
    for f in DFControl.Utils.searchdir(job2, "dos")
        cp(f, joinpath(job, splitdir(f)[2]), force=true)
    end
end
