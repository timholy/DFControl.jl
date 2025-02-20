using BinDeps

include("config_init.jl")

if Sys.which("cif2cell") === nothing
    relpath(args...) = joinpath(@__DIR__, args...)

    pythonpath = relpath("python2")
    prevpythfound = false
    package_basepath = joinpath(@__DIR__, "../../")
    for d in readdir(package_basepath)
        test_pythonpath = joinpath(package_basepath, d, "deps/python2/")
        if ispath(test_pythonpath) && !ispath(pythonpath) && !isempty(readdir(test_pythonpath))
            @info "Previous python2 found at $test_pythonpath."
            cp(test_pythonpath, pythonpath)
            prevpythonfound = true
            break
        end
    end
    if !ispath(pythonpath)
        mkdir(pythonpath)
        dlpath = relpath("downloads")
        if !ispath(dlpath)
            mkdir(dlpath)
        end
        #From Conda installation
        url = "https://repo.continuum.io/miniconda/Miniconda2-latest-"
        if Sys.isapple()
            url *= "MacOSX"
        elseif Sys.islinux()
            url *= "Linux"
        elseif Sys.iswindows()
            url = "https://repo.continuum.io/miniconda/Miniconda2-4.5.4-"
            url *= "Windows"
        else
            error("Unsuported OS.")
        end
        url *= Sys.WORD_SIZE == 64 ? "-x86_64" : "-x86"
        url *= Sys.iswindows() ? ".exe" : ".sh"

        if Sys.isunix()
            installer = joinpath(dlpath, "installer.sh")
        end
        if Sys.iswindows()
            installer = joinpath(dlpath, "installer.exe")
        end
        download(url, installer)
        if Sys.isunix()
            chmod(installer, 33261)  # 33261 corresponds to 755 mode of the 'chmod' program
            run(`$installer -b -f -p $pythonpath`)
        end
        if Sys.iswindows()
            run(Cmd(`$installer /S /AddToPath=0 /RegisterPython=0 /D=$pythonpath`;
                    windows_verbatim = true))
        end

        tarpath = relpath("external", "cif2cell.tar.gz")
        run(unpack_cmd(tarpath, @__DIR__, ".gz", ".tar"))
        cif2celldir = relpath("cif2cell-1.2.10")
        cd(cif2celldir)
        pyex = Sys.iswindows() ? joinpath(pythonpath, "python") :
               joinpath(pythonpath, "bin", "python2")
        run(`$pyex setup.py install --prefix=$pythonpath`)
        cd("..")
        #stupid urlopen
        starfile = Sys.iswindows() ?
                   joinpath(pythonpath, "lib", "site-packages", "StarFile.py") :
                   joinpath(pythonpath, "lib", "python2.7", "site-packages", "StarFile.py")
        starsource = read(starfile, String)
        starsource = replace(starsource,
                             "filestream = urlopen(filename)" => "filestream = urlopen('file:' + filename)")
        write(starfile, starsource)
        #
        rm(relpath("cif2cell-1.2.10"); recursive = true)
        rm(relpath("downloads"); recursive = true)
    end
end

if any(x->!ispath(joinpath(@__DIR__, x)), ("wannier90flags.jl", "qeflags.jl", "abinitflags.jl", "elkflags.jl"))
    include("asset_init.jl")
end
