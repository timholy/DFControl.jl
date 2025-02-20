"""
    InputData(name::Symbol, option::Symbol, data::Any)

Represents a more structured block of input data.
e.g. `InputData(:k_points, :automatic, (6,6,6,1,1,1))`
would be translated for a QE calculation into
```
K_POINTS(automatic)
6 6 6 1 1 1
```
"""
mutable struct InputData
    name   :: Symbol
    option :: Symbol
    data   :: Any
end
function InputData(dict::JSON3.Object)
    if dict[:data] isa AbstractVector 
        if dict[:data][1] isa AbstractVector
            data = NTuple{length(dict[:data][1]), Float64}[]
            for d_ in dict[:data]
                push!(data, (d_...,))
            end
        else
            data = [dict[:data]...,]
        end
    else
        data = dict[:data]
    end
    return InputData(Symbol(dict[:name]), Symbol(dict[:option]), data)
end

StructTypes.StructType(::Type{InputData}) = StructTypes.Struct()

abstract type Package end
struct NoPackage <: Package end
struct Wannier90 <: Package end
struct QE <: Package end
struct Abinit <: Package end
struct Elk <: Package end
StructTypes.StructType(::Type{<:Package}) = StructTypes.Struct()

"""
    Calculation{P<:Package}(name    ::String;
                            flags   ::AbstractDict = Dict{Symbol, Any}(),
                            data    ::Vector{InputData} = InputData[],
                            exec    ::Exec,
                            run     ::Bool = true,
                            infile  ::String = P == Wannier90 ? name * ".win" : name * ".in",
                            outfile ::String = name * ".out")

The representation of a *DFT* calculation of package `P`,
holding the `flags` that will be written to the `infile`,
the executable `exec` and the output written by the calculation to the `outfile`.
It essentially represents a line in a job script similar to `exec < infile.in > outfile.out`. 
`outdata` stores the parsed calculation output after it was read at least once.
The `run` field indicates whether the calculation should be actually performed,
e.g. if `run=false` the corresponding line will be commented out in the job script.

    Calculation{P<:Package}(name::AbstractString, flags::Pair{Symbol, Any}...; kwargs...)

Create a [`Calculation`](@ref) from `name` and `flags`, other `kwargs...` will be passed to the constructor.

    Calculation(template::Calculation, name::AbstractString, flags::Pair{Symbol, Any}...; excs=deepcopy(template.exec), run=true, data=nothing)

Creates a new [`Calculation`](@ref) from the `template`, setting the `flags` of the newly created one to the specified ones.
"""
@with_kw_noshow mutable struct Calculation{P<:Package}
    name::String
    flags::Dict{Symbol,Any} = Dict{Symbol,Any}()
    data::Vector{InputData} = InputData[]
    exec::Exec
    run::Bool = true
    infile::String = name * ".in"
    outfile::String = name * ".out"
end

function Calculation(name, flags, data, e, run, infile,
                            outfile)
    if exec(e) ∈ Calculations.WAN_EXECS
        p = Wannier90
    elseif exec(e) ∈ Calculations.QE_EXECS
        p = QE
    elseif exec(e) ∈ Calculations.ELK_EXECS
        p = ELK
    else
        error("Package not identified from execs $(exec(e)).")
    end
    return Calculation{p}(name, flags, data, e, run, infile, outfile)
end

function Calculation(name, flags...; kwargs...)
    out = Calculation(; name = name, kwargs...)
    set_flags!(out, flags...; print=false)
    return out
end

function Calculation(template::Calculation, name, newflags...;
                     excs = deepcopy(template.exec), run  = true, data = nothing)
    newflags = Dict(newflags...)

    calculation       = deepcopy(template)
    calculation.name  = name
    calculation.exec = excs
    calculation.run   = run
    set_flags!(calculation, newflags...; print = false)

    if data !== nothing
        for (name, (option, dat)) in data
            d = getfirst(x -> x.name == name, calculation.data)
            if d !== nothing
                d.data = dat
                d.option = option
            else
                push!(calculation.data, InputData(name, option, dat))
            end
        end
    end
    return calculation
end
function Calculation(dict::JSON3.Object)
    Calculation(dict[:name], Dict(dict[:flags]), [InputData(t) for t in dict[:data]], Exec(dict[:exec]), dict[:run], dict[:infile], dict[:outfile])
end
    

# Calculation() = Calculation{NoPackage}(package=NoPackage())
StructTypes.StructType(::Type{<:Calculation}) = StructTypes.Struct()


# Interface Functions
isbands(c::Calculation)    = false
isnscf(c::Calculation)     = false
isscf(c::Calculation)      = false
isvcrelax(c::Calculation)  = false
isrelax(c::Calculation)    = false
ismagnetic(c::Calculation) = false
issoc(c::Calculation)      = false
outfiles(c::Calculation)   = [c.outfile]
ispw(c::Calculation)       = false
isprojwfc(c::Calculation)  = false

"""
    set_name!(c::Calculation, name::AbstractString)

Sets `calculation.name`, and `calculation.infile` and `calculation.outfile` to conform
with the new `name`.
"""
function set_name!(c::Calculation, name::AbstractString; print = true)
    c.name = name
    c.infile = name * splitext(c.infile)[2]
    c.outfile = name * splitext(c.outfile)[2]
    print && @info "\nname = $name\ninfile = $(c.infile)\noutfile = $(c.outfile)"
    return name
end

"""
    data(calculation::Calculation, n::Symbol)

The former returns `calculation.data`, the later -- the `InputData` with name `n`.
"""
data(calculation::Calculation, n::Symbol) = getfirst(x -> x.name == n, calculation.data)
Base.eltype(::Calculation{T}) where {T} = T

#
# Flag Dict interace
#

"""
    getindex(c::Calculation, n::Symbol)

Returns the flag with given symbol.

    getindex(job::Job, flag::Symbol)
    
Searches through the job's calculations for the requested flag.
A `Dict` will be returned with calculation names as the keys and the flags as values.
"""
function Base.getindex(c::Calculation, n::Symbol)
    if haskey(c, n)
        get(c, n)
    else
        throw(KeyError(n))
    end
end

function Base.haskey(c::Calculation, n::Symbol)
    haskey(c.flags, n) && return true
    for flgs in values(c.flags)
        flgs isa Dict && haskey(flgs, n) && return true
    end
    return false
end

function Base.get(c::Calculation, n::Symbol, v)
    if haskey(c.flags, n)
        return c.flags[n]
    else
        for flgs in values(c.flags)
            flgs isa Dict && haskey(flgs, n) && return flgs[n]
        end
        return v
    end
end
function Base.get(c::Calculation, n::Symbol)
    tv = get(c, n, nothing)
    tv === nothing && throw(KeyError(n))
    return tv
end
    
function Base.pop!(c::Calculation, n::Symbol, v)
    if haskey(c.flags, n)
        pop!(c.flags, n)
    else
        for flgs in values(c.flags)
            flgs isa Dict && haskey(flgs, n) && return pop!(flgs,n)
        end
        return v
    end
end
function Base.pop!(c::Calculation, n::Symbol)
    tv = pop!(c, n, nothing)
    tv === nothing && throw(KeyError(n))
    return tv
end
        
function Base.delete!(c::Calculation, n)
    if haskey(c.flags, n)
        delete!(c.flags, n)
    else
        for flgs in values(c.flags)
            flgs isa Dict && haskey(flgs, n) && return delete!(flgs, n)
        end
        return c.flags
    end
end

hasflag(c::Calculation, s::Symbol) = haskey(c, s)
hasflag(c::Calculation, s) = false

"""
    setindex!(c::Calculation, value, flag::Symbol)

Sets flags.

    setindex!(job::Job, value, flag::Symbol)

Set `flag` in all the appropriate calculations to the `value`.
"""
Base.setindex!(c::Calculation, dat, key) = set_flags!(c, key => dat)

"""
    set_flags!(c::Calculation, flags::Pair{Symbol, Any}...; print=true, force=false)

Sets multiple flags in one go. Flag validity and type are verified.

    set_flags!(job::Job, calculations::Vector{<:Calculation}, flags::Pair{Symbol,<:Any}...; print=true)
    set_flags!(job::Job, flags::Pair{Symbol,<:Any}...; print=true)

Sets the flags in the names to the flags specified.
This only happens if the specified flags are valid for the names.
"""
function set_flags!(c::Calculation{T}, flags...; print = true) where {T}
    found_keys = Symbol[]
    for (flag, value) in flags
        flag_type = flagtype(c, flag)
        if flag_type !== Nothing
            !(flag in found_keys) && push!(found_keys, flag)
            try
                if isa(value, AbstractVector{<:AbstractVector}) &&
                   flag_type <: AbstractVector
                    tvalue = [convert.(eltype(flag_type), v) for v in value]
                elseif flag == :starting_ns_eigenvalue
                    if length(size(value)) == 3
                        tvalue = convert.(Float32, value)
                    else
                        nat = div(length(value), 7*4)
                        tvalue = convert.(Float32, reshape(value, (7,4,nat)))
                    end
                elseif flag == :Hubbard_occupations
                    if length(size(value)) == 4
                        tvalue = convert.(Float32, value)
                    else
                        nat = div(length(value), 7*7*4)
                        tvalue = convert.(Float32, reshape(value, (7, 7,4,nat)))
                    end
                else
                    tvalue = convert(flag_type, value)
                end
            catch
                print &&
                    (@warn "'$(c.name)':\n  Could not convert '$value' into '$flag_type'.\n    Flag '$flag' not set.\n")
                continue
            end
            old_data = haskey(c, flag) ? c[flag] : ""
            
            if eltype(c) == QE
                block, _ = qe_block_variable(c, flag)
                if block == :error
                    error("""Block for flag $flag could not be found, please set it manually using <c>.flags[<block>][$flag] = $value""")
                end
                if !haskey(c.flags, block.name)
                    c.flags[block.name] = Dict{Symbol, Any}(flag => value)
                else
                    c.flags[block.name][flag] = value
                end
            else
                c.flags[flag] = value
            end
            print && (@info "$(c.name): -> $flag:\n      $old_data set to: $value\n")
        else
            print && @warn """$flag could not be found in allowed flags,
                     please set it manually using <c>.flags[$flag] = $value"""
        end
    end
    return found_keys, c
end

"Runs through all the set flags and checks if they are allowed and set to the correct value"
function convert_flags!(calculation::Calculation, flags=calculation.flags)
    for (flag, value) in flags
        if value isa Dict
            convert_flags!(calculation, value)
        else
                
            flagtype_ = flagtype(calculation, flag)
            if flagtype_ == Nothing
                @warn "Flag $flag was not found in allowed flags for exec $(calculation.exec)."
                continue
            end
            if !(isa(value, flagtype_) || eltype(value) <: flagtype_)
                try
                    if isbitstype(eltype(value))
                        if length(value) > 1
                            calculation[flag] = convert(flagtype_, value)
                        else
                            calculation[flag] = convert(eltype(flagtype_), value)
                        end
                    else
                        calculation[flag] = convert.(flagtype_, value)
                    end
                catch
                    error("Input $(calculation.name): Could not convert :$flag of value $value to the correct type ($flagtype_), please set it to the correct type.")
                end
            end
        end
    end
end

function Base.:(==)(d1::InputData, d2::InputData)
    return all(x -> getfield(d1, x) == getfield(d2, x), fieldnames(InputData))
end

function Base.:(==)(i1::Calculation, i2::Calculation)
    return all(x -> getfield(i1, x) == getfield(i2, x),
               fieldnames(Calculation))
end

ψ_cutoff_flag(::Calculation) = nothing
ρ_cutoff_flag(::Calculation) = nothing

function set_cutoffs!(c::Calculation, ecutwfc, ecutrho)
    return set_flags!(c, ψ_cutoff_flag(c) => ecutwfc, ρ_cutoff_flag(c) => ecutrho)
end

"""
    set_kpoints!(calculation::Calculation{QE}, k_grid::NTuple{3, Int}; print=true)
    set_kpoints!(calculation::Calculation{QE}, k_grid::NTuple{6, Int}; print=true)
    set_kpoints!(calculation::Calculation{QE}, k_grid::Vector{<:NTuple{4}}; print=true, k_option=:crystal_b)

Convenience function to set the `:k_points` data block of `calculation`.
The three different methods are targeted at `nscf`, `scf` or `vcrelax`,
and `bands` calculations, respectively.
For the `nscf` version an explicit list of `k_points` will be generated.

    set_kpoints!(calculation::Calculation{Wannier90}, k_grid::NTuple{3, Int})

Similar to the `nscf` targeted function in the sense that it will generate
an explicit list of `k_points`, adhering to the same rules as for the `nscf`.
The `mp_grid` flag will also automatically be set.
"""
function set_kpoints!(::Calculation{P}, args...; kwargs...) where {P}
    @error "set_kpoints! not implemented for package $P."
end

#-------- Generating new Calculations ---------- #

function calculation_from_kpoints(template::Calculation, newname, kpoints, newflags...)
    newcalc = Calculation(deepcopy(template); name = newname)
    set_flags!(newcalc, newflags...; print = false)
    set_name!(newcalc, newname)
    set_kpoints!(newcalc, kpoints; print = false)
    return newcalc
end

function gencalc_nscf(::Calculation{P}, args...) where {P}
    @error "gencalc_nscf is not implemented for package $P."
end

function gencalc_scf(::Calculation{P}, args...) where {P}
    @error "gencalc_scf is not implemented for package $P."
end

function gencalc_projwfc(::Calculation{P}, args...) where {P}
    @error "gencalc_projwfc is not implemented for package $P."
end

function gencalc_wan(::Calculation{P}, args...) where {P}
    @error "gencalc_wan is not implemented for package $P."
end

function gencalc_vcrelax(::Calculation{P}, args...) where {P}
    @error "gencalc_vcrelax is not implemented for package $P."
end

function gencalc_bands(::Calculation{P}, args...) where {P}
    @error "gencalc_bands is not implemented for package $P."
end

function isconverged(::Calculation{P}) where {P}
    @error "isconverged is not implemented for package $P."
end

"""
    kgrid(na, nb, nc, calculation)

Returns an array of k-grid points that are equally spaced, calculation can be either `:wan` or `:nscf`, the returned grids are appropriate as calculations for wannier90 or an nscf calculation respectively.
"""
kgrid(na, nb, nc, ::Calculation{T}) where {T} = kgrid(na, nb, nc, T)

function sanitize_flags!(cs::Vector{<:Calculation}, str::Structure, name, outdir)
    if any(x -> eltype(x) == Wannier90, cs) && any(isnscf, cs)
        nscfcalc = getfirst(isnscf, cs)
        wancalc = getfirst(x -> eltype(x) == Wannier90, cs)
        if eltype(nscfcalc) == Elk
            wancalc.flags[:num_bands]         = length(nscfcalc[:wann_bands])
            nscfcalc.flags[:wann_projections] = Structures.projections_string.(unique(filter(x -> !isempty(x.projections), str.atoms)))
            nscfcalc.flags[:elk2wan_tasks]    = ["602", "604"]
            nscfcalc.flags[:wann_seedname]    = Symbol(name)
            if get(wancalc, :wannier_plot, false)
                push!(nscfcalc[:elk2wan_tasks], "605")
            end
        end
    end

    u_ats = unique(str.atoms)
    isnc = Structures.isnoncolin(str)
    flags_to_set = []
    if any(x -> x.dftu.U != 0 ||
                    x.dftu.J0 != 0.0 ||
                    sum(x.dftu.J) != 0 ||
                    sum(x.dftu.α) != 0, u_ats)
        Jmap = map(x -> copy(x.dftu.J), u_ats)
        Jdim = maximum(length.(Jmap))
        Jarr = zeros(Jdim, length(u_ats))
        for (i, J) in enumerate(Jmap)
            diff = Jdim - length(J)
            if diff > 0
                for d in 1:diff
                    push!(J, zero(eltype(J)))
                end
            end
            Jarr[:, i] .= J
        end
        append!(flags_to_set,
                [:Hubbard_U     => map(x -> x.dftu.U, u_ats),
                 :Hubbard_alpha => map(x -> x.dftu.α, u_ats),
                 :Hubbard_beta  => map(x -> x.dftu.β, u_ats), :Hubbard_J     => Jarr,
                 :Hubbard_J0    => map(x -> x.dftu.J0, u_ats)])
    end
    if !isempty(flags_to_set) || any(x -> hasflag(x, :Hubbard_parameters), cs)
        push!(flags_to_set, :lda_plus_u => true)
        if isnc
            push!(flags_to_set, :lda_plus_u_kind => 1)
        end
    end
    if !isempty(flags_to_set)
        for c in cs
            set_flags!(c, flags_to_set...; print = false)
        end
    else
        for c in cs
            for f in
                (:lda_plus_u, :lda_plus_u_kind, :Hubbard_U, :Hubbard_alpha, :Hubbard_beta,
                 :Hubbard_J, :Hubbard_J0, :U_projection_type)
                pop!(c, f, nothing)
            end
        end
    end

    flags_to_set = []
    mags = map(x -> x.magnetization, u_ats)
    starts = Float64[]
    θs = Float64[]
    ϕs = Float64[]
    ismagcalc = isnc ? true : Structures.ismagnetic(str) || any(x->haskey(x, :tot_magnetization), cs)
    if ismagcalc
        if  isnc || any(x -> get(x, :noncolin, false), cs)
            for m in mags
                tm = normalize(m)
                if norm(m) == 0
                    push!.((starts, θs, ϕs), 0.0)
                else
                    θ = acos(tm[3]) * 180 / π
                    ϕ = atan(tm[2], tm[1]) * 180 / π
                    start = norm(m)
                    push!(θs, θ)
                    push!(ϕs, ϕ)
                    push!(starts, start)
                end
            end
            push!(flags_to_set, :noncolin => true)
        else
            for m in mags
                push!.((θs, ϕs), 0.0)
                if norm(m) == 0
                    push!(starts, 0)
                else
                    push!(starts, sign(sum(m)) * norm(m))
                end
            end
        end
        append!(flags_to_set, [:starting_magnetization => starts, :angle1 => θs, :angle2 => ϕs, :nspin => 2])
    end
    for c in cs
        try
            set_flags!(c, :prefix => "$name", :outdir => "$outdir"; print = false)
            if ispw(c)
                set_flags!(c, flags_to_set...; print = false)
                if isnc
                    pop!(c, :nspin, nothing)
                end
                if isvcrelax(c)
                    #this is to make sure &ions and &cell are there in the calculation 
                    !hasflag(c, :ion_dynamics) &&
                        set_flags!(c, :ion_dynamics => "bfgs"; print = false)
                    !hasflag(c, :cell_dynamics) &&
                        set_flags!(c, :cell_dynamics => "bfgs"; print = false)
                end
                #TODO add all the required flags
                @assert hasflag(c, :calculation) "Please set the flag for calculation with name: $(name(c))"

                set_flags!(c, :pseudo_dir => "."; print = false)
            end
            convert_flags!(c)
        catch
            @warn "Something went wrong trying to sanitize the flags for calc $(c.name)"
        end
    end

    return
end

rm_tmp_flags!(::Calculation) = nothing
function rm_tmp_flags!(c::Calculation{QE})
    pop!(c, :prefix, nothing)
    pop!(c, :outdir, nothing)
    return pop!(c, :nspin, nothing)
end

infile_outfile_str(c::Calculation) = "< $(c.infile) > $(c.outfile)"
remote_calcs(job, c::Calculation) = [RemoteHPC.Calculation(c.exec, Calculations.infile_outfile_str(c), c.run)]

hasflag(e::Exec, s::Symbol) = haskey(e.flags, s)

#Wannier
const WAN_EXECS = ["wannier90.x"]
is_wannier_exec(e::Exec) = exec(e) ∈ WAN_EXECS
#QE
const QE_EXECS = ["pw.x", "projwfc.x", "pp.x", "ld1.x", "ph.x", "pw2wannier90.x", "hp.x", "dos.x", "bands.x"]
is_qe_exec(e::Exec) = exec(e) ∈ QE_EXECS
# Elk
const ELK_EXECS = ["elk", "elk-omp"]
is_elk_exec(e::Exec) = exec(e) ∈ ELK_EXECS
parseable_execs() = vcat(QE_EXECS, WAN_EXECS, ELK_EXECS, JULIA_EXECS)
has_parseable_exec(l::String) = occursin(">", l) && any(occursin.(parseable_execs(), (l,)))
isparseable(e::Exec) = exec(e) ∈ parseable_execs()

