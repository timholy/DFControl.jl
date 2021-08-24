module Calculations
# This module handles all interactions with calculations
using Parameters, StructTypes, LinearAlgebra, JSON3 
using ..DFControl
using ..Utils
using ..Structures

# include("modules.jl")
include("execs.jl")
include("calculation.jl")
include("qe.jl")
include("elk.jl")
include("wannier.jl")
include("abinit.jl")
include("documentation.jl")

export Exec, Calculation, InputData
export Wannier90, QE, Abinit, Elk
end
