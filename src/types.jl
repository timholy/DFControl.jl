
abstract type Band{T<:AbstractFloat} end

"""
Energy band from DFT calculation.
"""
mutable struct DFBand{T<:AbstractFloat} <: Band{T}
  k_points_cart::Array{Array{T,1},1}
  k_points_cryst::Array{Array{T,1},1}
  eigvals::Array{T,1}
end

"""
Represents an input for DFT calculation. 

Fieldnames: backend::Symbol -> the DFT package that reads this input.
            control_blocks::Dict{Symbol,Dict{Symbol,Any}} -> maps different control blocks to their dict of flags and values.
            pseudos::Dict{Symbol,String} -> maps atom symbol to pseudo input file.
            cell_param::Dict{Symbol,Any} -> maps the option of cell_parameters to the cell parameters.
            atoms::Dict{Symbol,Any} -> maps atom symbol to position.
            k_points::Dict{Symbol,Any} -> maps option of k_points to k_points.
"""
mutable struct DFInput
  backend::Symbol
  control_blocks::Dict{Symbol,Dict{Symbol,Any}}
  pseudos::Dict{Symbol,String}
  cell_param::Dict{Symbol,Any}
  atoms::Dict{Symbol,Any}
  k_points::Dict{Symbol,Any}
end

"""
Represents a full DFT job with multiple input files and calculations.

Fieldnames: job_name::String
            calculations::Dict{String,DFInput} -> calculation type to DFInput
            flow::Array{Tuple{String,String},1} -> flow chart of calculations. The tuple is (calculation type, input file).
            home_dir::String -> directory on local machine.
            server::String -> server in full host@server format.
            server_dir::String -> directory on server.
"""
mutable struct DFJob
  job_name::String
  calculations::Dict{String,DFInput}
  flow::Array{Tuple{String,String},1}
  home_dir::String
  server::String
  server_dir::String
  function DFJob(job_name,calculations,flow,home_dir,server,server_dir)
    if home_dir != ""
      home_dir = form_directory(home_dir)
    end
    if server_dir != ""
      server_dir = form_directory(server_dir)
    end
    new(job_name,calculations,flow,home_dir,server,server_dir)
  end
end

"""
Represents an element.
"""
struct Element
  Z::Int64
  Name::String 
  atomic_weight::Float64
end

"""
Reads all the elements from the file.
"""
const ELEMENTS = Dict()
open(joinpath(@__DIR__,"../assets/elements.txt"),"r") do f
  while !eof(f)
    line = split(readline(f))
    ELEMENTS[Symbol(line[4])] = Element(parse(Int64,line[1]),line[9],parse(Float64,line[10]))
  end
end

