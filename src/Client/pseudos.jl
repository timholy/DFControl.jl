using ..Structures: Pseudo

# function pseudos(set::String, fuzzy::String)
#     if !(set in pseudo_sets())
#         error("$set not found in pseudosets.")
#     end
#     out = Dict{Symbol,String}()
    
#     pseudos = JSON3.read(read(joinpath(PSEUDO_DIR, set * ".json"), String), Dict{Symbol, Vector{String}})
#     for (k, ps) in pseudos
#         p = getfirst(x -> occursin(fuzzy, x), ps)
#         if p !== nothing
#             out[k] = p
#         end
#     end
#     return out
# end

# function rm_pseudos!(set::String)
#     p = joinpath(PSEUDO_DIR, set * ".json")
#     if ispath(p)
#         rm(p)
#     end
# end

# """
#     configure_pseudoset(set_name::String, dir::String)

# Reads the specified `dir` and sets up the pseudos for `set`.
# """
# function configure_pseudoset(set_name::String, dir::String)
#     files = readdir(dir)
#     pseudos = Dict{Symbol,Vector{String}}([el.symbol => String[]
#                                            for el in Structures.ELEMENTS])
#     for pseudo_string in files
#         element = Symbol(titlecase(String(split(split(replace(pseudo_string, "-" => "_"), ".")[1], "_")[1])))
#         if haskey(pseudos, element)
#             push!(pseudos[element], joinpath(dir, pseudo_string))
#         end
#     end
#     JSON3.write(joinpath(PSEUDO_DIR, set_name * ".json"), pseudos) 
#     return length(pseudos)
# end

# """
#     pseudo_sets()

# Lists all pseudo_sets.
# """
# pseudo_sets() = map(x -> splitext(x)[1], readdir(PSEUDO_DIR))
# function pseudos(server::Server, pseudoset, atsyms::Vector{Symbol}, fuzzy = "")
#     pseudo_paths = list_pseudoset(server, pseudoset, fuzzy)
#     ps = Dict{Symbol,Pseudo}()
#     for a in atsyms
#         path = get(pseudo_paths, a, nothing)
#         if path === nothing
#             error("No pseudo for atom $a found in set $pseudoset.")
#         end
#         ps[a] = Pseudo(server.name, path, "")
#     end
#     return ps
# end

# function list_pseudoset(server::Server, pseudoset, fuzzy="")
#     resp = HTTP.get(server, "/pseudos/$pseudoset", fuzzy)
#     if resp.status == 204
#         error("No pseudoset $pseudoset found on Server $(server.name). Please first configure it using configure_pseudoset.")
#     end
#     return JSON3.read(resp.body, Dict{Symbol,String})
# end

# """
#     list_pseudosets(server::Server)

# Lists the pseudosets that have previously been set up.
# """
# function list_pseudosets(server::Server)
#     return JSON3.read(HTTP.get(server, "/pseudos").body, Vector{String})
# end

# """
#     configure_pseudoset(server::Server, set_name::String, dir::String)

# Reads the specified `dir` and sets up the pseudos for `set`.
# """
# function configure_pseudoset(server::Server, set_name::String, dir::String)
#     p = isabspath(dir) ? dir : joinpath(server, dir)
#     n_pseudos = JSON3.read(HTTP.post(server, "/configure_pseudoset/" * p, 
#                                      set_name).body, Int)
#     @info "Configured $n_pseudos pseudos on Server $(server.name), found in dir $p."
# end

# """
#     rm_pseudoset!(server::Server, set_name::String)

# Removes the pseudo set from the server.
# """
# function rm_pseudoset!(server::Server, set_name::String)
#     return HTTP.put(server, "/rm_pseudos", set_name)
# end
# #---#

# """
#     set_pseudos!(job::Job, set::String; server=job.server, specifier::String="", kwargs...)
#     set_pseudos!(structure::Structure, set::String; server="localhost", specifier::String="", kwargs...)

# Sets the pseudopotentials of the atoms inside the `structure` (or `job.structure`) to the ones of `set`.
# `specifier` can be specified as a fuzzy match to select a specific pseudos if multiple pseudopotentials exist in the set.
# Example:
# ```
# set_pseudos!(job, "pbesol", specifier="rrkjus")
# ```
# will select the pseudo file that contains "rrkjus" in the filename.

# The pseudos will be searched for in the `server`.
# """
# Structures.set_pseudos!(job::Job, args...; server=job.server,kwargs...) =
#     Structures.set_pseudos!(job.structure, args...; server=server, kwargs...)
    
# function Structures.set_pseudos!(str::Structures.Structure, set; server = gethostname(), specifier = "", kwargs...)
#     atsyms = unique(map(x -> x.element.symbol, str.atoms))
#     return Structures.set_pseudos!(str, pseudos(Server(server), set, atsyms, specifier);
#                                    kwargs...)
# end
    
