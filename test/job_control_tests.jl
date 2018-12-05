using DFControl, Test

testjobpath = joinpath(testdir, "testassets", "test_job")
job = DFJob(testjobpath);

#output stuff
out = outputdata(job;print=false,onlynew=false);
@test haskey(out, "nscf")
@test haskey(out["nscf"], :fermi)

nscf = DFControl.input(job, "nscf")
show(nscf)
nscf2 = DFInput(nscf, "nscf2", data=[:testdata => (:testoption, "test"), :k_points => (:blabla, [1,1,1,1,1,1])])

@test data(nscf2, :testdata).option == :testoption
@test data(nscf2, :testdata).data   == "test"
@test data(nscf2, :testdata).name   == :testdata
@test data(nscf2, :k_points).option == :blabla
@test data(nscf2, :k_points).data   == [1,1,1,1,1,1]
@test job["scf"][:k_points].option == :automatic
@test_throws ErrorException job["bladbsflk"]
@test_throws ErrorException job["nscf"][:bladkfj]


setkpoints!(nscf2, (3,3,3), print=false)
@test data(nscf2, :k_points).data  == kgrid(3, 3, 3, :nscf)


setkpoints!(nscf2, [(3.,3.,3.,1.), (3.,3.,3.,1.)], print=false)
@test data(nscf2, :k_points).option  == :crystal_b
@test data(nscf2, :k_points).data  == [(3.,3.,3.,1.), (3.,3.,3.,1.)]

setkpoints!(nscf2, (3,3,3,0,0,1), print=false)
@test data(nscf2, :k_points).option  == :automatic
@test data(nscf2, :k_points).data  == [3,3,3,0,0,1]

fermi = read_qe_output(outpath(job, "nscf"))[:fermi]
@test fermi == read_fermi_from_qe_output(joinpath(job.local_dir, "nscf.out"))

addcalc!(job, "bands", [(0.5,0.0,0.5,10.0),(0.0,0.0,0.0,10.0),(0.5,0.5,0.5,1.0)], name="bands2")
@test flag(job, "bands2", :calculation) == "bands"
@test data(job, "bands2", :k_points).data == [(0.5,0.0,0.5,10.0),(0.0,0.0,0.0,10.0),(0.5,0.5,0.5,1.0)]
addcalc!(job, "nscf", (10,10,10), name="nscf2")
@test flag(job, "nscf2", :calculation) == "nscf"
addcalc!(job, "scf", (5,5,5,1,1,1), name="1scf2")
@test flag(job, "1scf2", :calculation) == "scf"
@test job["nscf2"][:calculation] == flag(job, "nscf2", :calculation)


wanflags = [:write_hr => true, :wannier_plot => true]

addwancalc!(job, "nscf",fermi-7.0, :Pt => [:s, :p, :d], Epad=5.0, wanflags=wanflags, print=false)
@test flag(job, "wan", :write_hr) == flag(job, "wan", :wannier_plot) == true

wanout = outputdata(job, "wan")
@test length(wanout[:final_state]) == 20
@test length(wanout[:wannierise]) == 203
job.inputs = job.inputs[1:4]

setflags!(job, :nspin => 2, print=false)
@test flag(job, "nscf", :nspin) == 2
job["nscf"][:nspin] = 3
@test job["nscf"][:nspin] == 3

job[:nspin] = 10
@test job["nscf"][:nspin] == 10

job["nscf"][:Hubbard_U] = [1.0]
@test job["nscf"][:Hubbard_U] == [1.0]

job["nscf"][:starting_magnetization] = [[1.0, 2.0, 1.0]]
@test job["nscf"][:starting_magnetization] == [[1.0, 2.0, 1.0]]

job["nscf"][:Hubbard_J] = [0 1 2]
@test job["nscf"][:Hubbard_J] == [0 1 2]
addwancalc!(job, nscf, fermi-7.0, :Pt => [:s, :p, :d], Epad=5.0, wanflags=wanflags, print=false)

#TODO: add test with the new wancalc from projwfc

setflow!(job, ""=>false)
@test job.inputs[1].run == false
setflow!(job, "nscf" => true, "bands" => true)
@test job.inputs[3].run

@test inputs(job,["nscf"]) == inputs(job, "nscf")

save(job)
job2 = DFJob(local_dir)

setpseudos!(job, "pseudos", :Pt => "Pt.UPF")
@test job.structure.atoms[1].pseudo == "Pt.UPF"
@test job["nscf"][:pseudo_dir] == "pseudos"

begin
    for (calc, calc2) in zip(job.inputs, job2.inputs)

        for (f, v) in calc.flags
            if f in (:Hubbard_J, :pseudo_dir)
                continue
            else
                @test v == calc2.flags[f]
            end
        end
        for (b1, b2) in zip(calc.data, calc2.data)
            for n in fieldnames(typeof(b1))
                @test getfield(b1, n) == getfield(b2, n)
            end
        end
    end
end

job3 = DFJob(job2, :lspinorb => true)
@test all(atoms(job3).==atoms(job2))
@test flag(job3, :lspinorb)
rmflags!(job3, :lspinorb, print=false)

begin
    for (calc, calc2) in zip(job.inputs, job3.inputs)
        for (f, v) in calc.flags
            if f in (:Hubbard_J, :pseudo_dir)
                continue
            else
                @test v == calc2.flags[f]
            end
        end
        for (b1, b2) in zip(calc.data, calc2.data)
            for n in fieldnames(typeof(b1))
                @test getfield(b1, n) == getfield(b2,n)
            end
        end
    end
end

testorbs = [:s, :p]
setprojections!(job, :Pt => testorbs)
@test convert.(Symbol, [p.orb for p in projections(job, :Pt)]) == testorbs
setwanenergies!(job, read_qe_bands_file(outpath(nscf)), fermi-7.0,  Epad=3.0, print=false)

@test flag(job, :dis_froz_max) == 13.2921
@test flag(job, :dis_win_max) == 16.292099999999998

setexecflags!(job, "pw.x", :nk => 230)
@test DFControl.getfirst(x->x.symbol==:nk, execs(job, "nscf")[2].flags).value == 230
rmexecflags!(job, "pw.x", :nk)
@test isempty(filter(x->x.symbol == :nk, execs(job, "nscf")[2].flags))

setexecdir!(job, "pw.x", joinpath(homedir(), "bin"))
@test execs(job, "nscf")[2].dir == joinpath(homedir(), "bin")

setname!(job, "nscf", "test")
@test inpath(job, "test") == joinpath(job.local_dir, "test.in")
setname!(job, "test", "nscf")

setserverdir!(job, "localhost")
@test job.server_dir == "localhost"

setheaderword!(job, "defpart", "frontend", print=false)
@test any(occursin.("frontend",job.header))

undo!(job)
@test any(occursin.("defpart", job.header))


setdataoption!(job, "nscf",:k_points, :blabla, print=false)
@test data(job, "nscf", :k_points).option == :blabla
setdataoption!(job, :k_points, :test, print=false)
@test data(job, "nscf", :k_points).option == :test

job = undo(job)
@test data(job, "nscf", :k_points).option == :blabla

report = progressreport(job; onlynew=false, print=false)
@test report[:fermi] == 17.4572
@test length(report[:accuracy]) == 9
newatompos = outputdata(job, "vc_relax", onlynew=false)[:final_structure]
job.structure = newatompos

rm.(inpath.(job.inputs))

rm(joinpath(splitdir(inpath(job.inputs[1]))[1], "pw2wan_wanup.in"))
rm(joinpath(splitdir(inpath(job.inputs[1]))[1], "pw2wan_wandn.in"))
rm(joinpath(job.local_dir, "job.tt"))
