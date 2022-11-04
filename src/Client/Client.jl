module Client
using HTTP, JSON3, StructTypes, Dates, JLD2, Distributed, REPL.TerminalMenus, Reexport
using ..Utils
using ..FileIO

# @reexport using ..Servers
@reexport using ..Structures
@reexport using ..Calculations
using ..Calculations: Calculation
@reexport using ..Jobs
import RemoteHPC

using ..Calculations: set_name!, set_kpoints!, data; export set_name!, set_kpoints!, data
using ..Structures: set_pseudos!, element; export set_pseudos!, element
using ..Jobs: set_flow!; export set_flow!
using RemoteHPC: submit, save, state, abort, Server, Exec, Environment, isalive, start, kill, load, local_server; export submit, save, state, abort, Server, Exec, Environment, isalive, start, kill, load, local_server
import RemoteHPC
import ..DFControl: bandgap

include("job.jl")
export isrunning, versions, last_version, switch_version!, rm_version!,
       outputdata, readfermi, readbands, bandgap, archive, cleanup
include("pseudos.jl")
export configure_pseudoset, PseudoSet

end
