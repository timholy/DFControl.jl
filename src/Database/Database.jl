module Database
    using ..DFControl: config_path
    using JSON3
    using HTTP

    abstract type Storable end

    storage_name(s::S) where {S<:Storable} = hasfield(S, :name) ? s.name : error("Please define a name function for type $S.")
    storage_directory(s::S) where {S<:Storable} = error("Please define a storage_directory function for type $S.")
    
    storage_path(s::S) where {S<:Storable} = joinpath(storage_directory(s), storage_name(s) * ".json")
    storage_url(s::Storable) = joinpath("/database", storage_path(s))
    verify(s::Storable) = nothing

    # These are the standard functions where things are saved as simple jsons in the
    # config_path.
    function save(s::Storable)
        p = config_path(storage_path(s))
        mkpath(splitdir(p)[1])
        if ispath(p)
            @warn "Overwriting previously existing item at $p."
        end
        verify(s)
        JSON3.write(p, s)
    end
    function save(server, s::Storable)
        url = storage_url(s) 
        HTTP.post(server, url, s)
    end
    
    function load(s::S) where {S <: Storable}
        p = config_path(storage_path(s))
        if !ispath(p)
            error("No item found at $p.")
        end
        JSON3.read(read(p, String), S)
    end
    function load(server, s::S) where {S <: Storable}
        url = storage_url(s)
        if exists(server, s)
            return JSON3.read(JSON3.read(HTTP.get(server, url).body, String), S)
        else
            return JSON3.read(HTTP.get(server, url, s).body, Vector{S})
        end
            
    end

    exists(s::Storable) = ispath(config_path(storage_path(s)))
    function exists(server, s::Storable)
        url = storage_url(s)
        possibilities = JSON3.read(HTTP.get(server, splitdir(url)[1]).body, Vector{String})
        return storage_name(s) ∈ possibilities
    end

    function replacements(s::S) where {S<:Storable}
        dir = config_path(storage_directory(s))
        all = map(x -> JSON3.read(read(joinpath(dir, x), String), S), readdir(dir))
        score = zeros(Int, length(all))
        for (i, t) in enumerate(all)
            for f in fieldnames(S)
                if getfield(t, f) == getfield(s, f)
                    score[i] += 1
                end
            end
        end
        s = sortperm(score)
        return all[s][1:length(findall(!iszero, score))]
    end

    function name(s::S) where {S<:Storable}
        dir = config_path(storage_directory(s))
        for f in readdir(dir)
            t =  JSON3.read(read(joinpath(dir, f), String), S)
            if t == s
                return t.name
            end
        end
    end
    
    function Base.rm(s::Storable)
        p = config_path(storage_path(s))
        if !ispath(p)
            error("No item found at $p.")
        end
        rm(p)
    end
        
    function Base.rm(server, s::Storable)
        url = storage_url(s) 
        HTTP.put(server, url)
    end

    
        
    export Storable
    export save, load, exists
   
    
end
