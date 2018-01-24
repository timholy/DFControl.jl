module DFControl
# using Reexport
    using RecipesBase
    
    if Pkg.installed("GtkReactive") != nothing
        using Reactive
        using Gtk,GtkReactive,Gtk.ShortNames,Colors
        const print_s = Signal("")
        include("dashboard.jl")
        dfprintln(s::String) = push!(print_s,s)
        # preserve(map(println,print_s))
    else
        dfprintln(s::String) = println(s)
    end
    export dfprintln 
    
    include("types.jl")
    export ELEMENTS
    export Atom

    export Structure

    export Point3D
    export Band
    export DFBand
    export ControlBlock
    export QEControlBlock
    export DataBlock
    export QEDataBlock
    export DFInput
    export QEInput
    export WannierInput
    export DFJob
    
    

    include("utils.jl")
    export print_qe_flags
    export print_qe_namelists
    export apply_fermi_level
    export apply_fermi_level!
    export gen_k_grid

    

    include("input.jl")
    include("job_control.jl")
    export create_job
    export load_job
    export pull_job
    export load_server_job
    export save_job
    export push_job
    export submit_job

    export change_flags!
    export get_flag
    export change_data!
    export get_data
    export get_block
    export add_block!
    export add_data!
    export set_flags!
    export remove_flags!
    export change_flow!
    export set_flow!
    export add_calculation!
    export get_run_command
    export change_run_command!
    export get_inputs
    export get_input
    export change_filename!
    export print_run_command
    export print_flow
    export print_block
    export print_blocks
    export print_data
    export print_filename
    export print_info 
    export print_flags
    export print_flag
    export change_kpoints!
    export change_data_option!
    export change_header_word!
    export undo!
    export undo
    
    export get_atoms
    export sync_atoms!
    export change_atoms!
    export get_cell
    export sync_cell!
    export change_cell!
    export get_path

    include("constants.jl")
    export AbinitFlags
    export AbinitDatabase

    include("fileio.jl")
    export read_abi_input
    export read_abi_output
    export read_abi_fatbands
    export read_abi_ebands
    export read_abi_eig
    export read_qe_bands_file
    export read_ks_from_qe_bands_file
    export read_fermi_from_qe_file
    export read_qe_kpdos
    export read_qe_polarization
    export read_qe_input
    export read_qe_output
    export read_wannier_input
    export write_input
    export write_job_files
    export expr2file

    include("plotting.jl")
    export plot_qe_bands
    export plot_qe_kpdos

    include("server_comm.jl")
    export read_errors
    export pull_outputs
    export pull_file
    export pull_files
    export qstat
    export watch_qstat

    include("defaults.jl")
    export set_default_pseudo_dir
    export set_default_server
    export configure_default_pseudos
    export remove_default_pseudo_dir
    export set_default_job_header
    export @add_default
    export load_defaults
    export set_default_input
    export remove_default_input

    #no extra functionality, for faster scripting
    include("shortnames.jl")
    init_defaults(default_file)

    const UNDO_JOBS = DFJob[]

end
