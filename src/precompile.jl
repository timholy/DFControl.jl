function _precompile_()
    ccall(:jl_generating_output, Cint, ()) == 1 || return nothing
    precompile(Tuple{typeof(save),DFJob})
    precompile(Tuple{Core.var"#kw#Type",
                     NamedTuple{(:server_dir, :bin_dir, :header, :pseudoset),
                                Tuple{String,String,Array{String,1},Symbol}},Type{DFJob},
                     String,String,String,
                     Array{Pair{Symbol,
                                Tuple{Array{Exec,1},Dict{Symbol,Array{T,1} where T}}},1},
                     Pair{Symbol,String},Pair{Symbol,String},Pair{Symbol,String},
                     Pair{Symbol,Float64},Vararg{Pair{Symbol,Float64},N} where N})
    precompile(Tuple{DFControl.var"#kw##outputdata",
                     NamedTuple{(:print, :onlynew),Tuple{Bool,Bool}},typeof(outputdata),
                     DFJob})
    precompile(Tuple{Type{DFJob},String})
    precompile(Tuple{typeof(scale_cell!),DFJob,Int64})
    precompile(Tuple{typeof(DFControl.extract_atoms!),Dict{Symbol,Any},Array{Symbol,1},
                     DFControl.InputData,DFControl.InputData,
                     SArray{Tuple{3,3},Length{Float64,(Ang,)},2,9}})
    precompile(Tuple{DFControl.var"#kw##gencalc_wan",
                     NamedTuple{(:Epad, :wanflags),
                                Tuple{Float64,Array{Pair{Symbol,Bool},1}}},
                     typeof(gencalc_wan),DFCalculation{QE},
                     Structure{Float64,Atom{Float64,Length{Float64,(Ang,)}},
                               Length{Float64,(Ang,)}},Float64})
    precompile(Tuple{typeof(DFControl.set_hubbard_flags!),DFCalculation{QE},
                     Structure{Float64,Atom{Float64,Length{Float64,(Ang,)}},
                               Length{Float64,(Ang,)}}})
    precompile(Tuple{typeof(DFControl.set_starting_magnetization_flags!),DFCalculation{QE},
                     Structure{Float64,Atom{Float64,Length{Float64,(Ang,)}},
                               Length{Float64,(Ang,)}}})
    precompile(Tuple{typeof(show),DFJob})
    precompile(Tuple{typeof(save),DFCalculation{QE},
                     Structure{Float64,Atom{Float64,Length{Float64,(Ang,)}},
                               Length{Float64,(Ang,)}}})
    precompile(Tuple{DFControl.var"#kw##configuredefault_pseudos",
                     NamedTuple{(:pseudo_dirs,),Tuple{Dict{Symbol,String}}},
                     typeof(configuredefault_pseudos)})
    precompile(Tuple{typeof(DFControl.kgrid),Int64,Int64,Int64,Type{QE}})
    precompile(Tuple{typeof(DFControl.kakbkc),Array{Array{Float64,1},1}})
    precompile(Tuple{typeof(filter),typeof(DFControl.ismagnetic),
                     Array{Atom{Float64,Length{Float64,(Ang,)}},1}})
    precompile(Tuple{typeof(save),DFCalculation{Wannier90},
                     Structure{Float64,Atom{Float64,Length{Float64,(Ang,)}},
                               Length{Float64,(Ang,)}}})
    precompile(Tuple{typeof(DFControl.extract_structure),String,DFControl.InputData,
                     DFControl.InputData,DFControl.InputData,Bool})
    precompile(Tuple{typeof(set_Hubbard_U!),DFJob,Pair{Symbol,Float64}})
    precompile(Tuple{typeof(set_projections!),DFJob,Pair{Symbol,Array{Symbol,1}}})
    precompile(Tuple{Core.var"#kw#Type",
                     NamedTuple{(:server_dir, :bin_dir, :header, :pseudoset),
                                Tuple{String,String,Array{String,1},Symbol}},Type{DFJob},
                     String,String,
                     Structure{Float64,Atom{Float64,Length{Float64,(Ang,)}},
                               Length{Float64,(Ang,)}},
                     Array{Pair{Symbol,
                                Tuple{Array{Exec,1},Dict{Symbol,Array{T,1} where T}}},1},
                     Pair{Symbol,String},Pair{Symbol,String},Pair{Symbol,String},
                     Pair{Symbol,Float64},Vararg{Pair{Symbol,Float64},N} where N})
    precompile(Tuple{typeof(show),Base.PipeEndpoint,DFJob})
    precompile(Tuple{Core.var"#kw#Type",
                     NamedTuple{(:data,),Tuple{Array{Pair{Symbol,Tuple{Symbol,Any}},1}}},
                     Type{DFCalculation},DFCalculation{QE},String})
    precompile(Tuple{DFControl.var"#kw##set_flags!",NamedTuple{(:print,),Tuple{Bool}},
                     typeof(set_flags!),DFJob,Pair{Symbol,Array{Int64,2}}})
    precompile(Tuple{typeof(parse),
                     Type{NamedTuple{(:Iter, :Ω_i_1, :Ω_i, :δ, :Time),
                                     Tuple{Int64,Float64,Float64,Float64,Float64}}},
                     Array{SubString{String},1}})
    precompile(Tuple{typeof(outputdata),DFJob,String})
    precompile(Tuple{typeof(bandgap),DFJob,Float64})
    precompile(Tuple{typeof(set_magnetization!),DFJob,Pair{Symbol,Array{Float64,1}}})
    precompile(Tuple{typeof(DFControl.extract_atoms),DFControl.InputData,
                     DFControl.InputData,SArray{Tuple{3,3},Length{Float64,(Ang,)},2,9},
                     Bool})
    precompile(Tuple{typeof(documentation),Type{QE},String})
    precompile(Tuple{typeof(DFControl.isdefault),SArray{Tuple{3},Float64,1,3}})
    precompile(Tuple{DFControl.var"#kw##set_kpoints!",NamedTuple{(:print,),Tuple{Bool}},
                     typeof(set_kpoints!),DFCalculation{QE},Array{NTuple{4,Float64},1}})
    precompile(Tuple{typeof(DFControl.kgrid),Int64,Int64,Int64,Symbol})
    precompile(Tuple{DFControl.var"#kw##rm_flags!",NamedTuple{(:print,),Tuple{Bool}},
                     typeof(rm_flags!),DFJob,Symbol})
    precompile(Tuple{typeof(projections),DFJob,Symbol})
    precompile(Tuple{typeof(bandgap),DFJob})
    precompile(Tuple{typeof(qe_flaginfo),Exec,Symbol})
    precompile(Tuple{DFControl.var"#kw##set_data_option!",NamedTuple{(:print,),Tuple{Bool}},
                     typeof(set_data_option!),DFJob,String,Symbol,Symbol})
    precompile(Tuple{Type{DFJob},DFJob,Pair{Symbol,Bool}})
    precompile(Tuple{typeof(rm_execflags!),DFJob,String,Symbol})
    precompile(Tuple{typeof(rm_flags!),DFJob,Symbol,Symbol,Vararg{Symbol,N} where N})
    precompile(Tuple{typeof(set_magnetization!),Atom{Float64,Length{Float64,(Ang,)}},
                     Array{Float64,1}})
    precompile(Tuple{DFControl.var"#kw##set_wanenergies!",
                     NamedTuple{(:Epad,),Tuple{Float64}},typeof(set_wanenergies!),DFJob,
                     DFCalculation{QE},Float64})
    precompile(Tuple{typeof(set_execflags!),DFJob,String,Pair{Symbol,Int64},
                     Vararg{Pair{Symbol,Int64},N} where N})
    precompile(Tuple{DFControl.var"#kw##set_flags!",NamedTuple{(:print,),Tuple{Bool}},
                     typeof(set_flags!),DFJob,Pair{Symbol,Int64}})
    precompile(Tuple{typeof(set_execdir!),DFJob,String,String})
    precompile(Tuple{typeof(scale_bondlength!),Atom{Float64,Length{Float64,(Ang,)}},
                     Atom{Float64,Length{Float64,(Ang,)}},Float64,
                     SArray{Tuple{3,3},Length{Float64,(Ang,)},2,9}})
    precompile(Tuple{DFControl.var"#kw##set_flags!",NamedTuple{(:print,),Tuple{Bool}},
                     typeof(set_flags!),DFJob,Pair{Symbol,Array{Int64,1}}})
    precompile(Tuple{typeof(gencalc_projwfc),DFCalculation{QE},Int64,Int64,Float64})
    precompile(Tuple{Core.var"#kw#Type",
                     NamedTuple{(:projections,),Tuple{Array{DFControl.Projection,1}}},
                     Type{Atom},Symbol,DFControl.Element,
                     SArray{Tuple{3},Length{Float64,(Ang,)},1,3},
                     SArray{Tuple{3},Float64,1,3}})
    precompile(Tuple{typeof(parse),
                     Type{NamedTuple{(:Iter, :δ_spread, :∇RMS, :Spread, :Time),
                                     Tuple{Int64,Float64,Float64,Float64,Float64}}},
                     Array{SubString{String},1}})
    precompile(Tuple{DFControl.var"#kw##set_flags!",NamedTuple{(:print,),Tuple{Bool}},
                     typeof(setflags!),DFCalculation{QE},Pair{Symbol,Array{Int64,2}}})
    precompile(Tuple{typeof(==),Atom{Float64,Length{Float64,(Ang,)}},
                     Atom{Float64,Length{Float64,(Ang,)}}})
    precompile(Tuple{typeof(DFControl.write_cell),IOStream,SArray{Tuple{3,3},Float64,2,9}})
    precompile(Tuple{DFControl.var"#kw##setprojections!",NamedTuple{(:soc,),Tuple{Bool}},
                     typeof(setprojections!),
                     Structure{Float64,Atom{Float64,Length{Float64,(Ang,)}},
                               Length{Float64,(Ang,)}},Pair{Symbol,Array{Symbol,1}}})
    precompile(Tuple{typeof(show),IOContext{Base.GenericIOBuffer{Array{UInt8,1}}},
                     DFCalculation{Wannier90}})
    precompile(Tuple{typeof(parse),
                     Type{NamedTuple{(:index, :center, :Spread),
                                     Tuple{Int64,SArray{Tuple{3},Float64,1,3},Float64}}},
                     Array{SubString{String},1}})
    precompile(Tuple{typeof(DFControl.wanenergyranges),Float64,Int64,
                     Array{DFControl.DFBand{Float64,K} where K,1},Float64})
    precompile(Tuple{DFControl.var"#kw##setkpoints!",NamedTuple{(:print,),Tuple{Bool}},
                     typeof(setkpoints!),DFCalculation{QE},Tuple{Int64,Int64,Int64}})
    precompile(Tuple{typeof(DFControl.sanitize_flags!),DFCalculation{Wannier90}})
    precompile(Tuple{typeof(bandgap),Array{DFControl.DFBand{Float64,K} where K,1},Float64})
    precompile(Tuple{typeof(DFControl.strip_split),SubString{String}})
    precompile(Tuple{typeof(setpseudos!),
                     Structure{Float64,Atom{Float64,Length{Float64,(Ang,)}},
                               Length{Float64,(Ang,)}},Symbol,String})
    precompile(Tuple{typeof(setindex!),DFCalculation{QE},Array{Array{Float64,1},1},Symbol})
    precompile(Tuple{typeof(set_position!),Atom{Float64,Length{Float64,(Ang,)}},
                     SArray{Tuple{3},Length{Float64,(Ang,)},1,3},
                     SArray{Tuple{3,3},Length{Float64,(Ang,)},2,9}})
    precompile(Tuple{DFControl.var"#kw##setdata_option!",NamedTuple{(:print,),Tuple{Bool}},
                     typeof(setdata_option!),DFJob,Symbol,Symbol})
    precompile(Tuple{typeof(removedefault_pseudos),Symbol})
    precompile(Tuple{typeof(scale_cell!),
                     Structure{Float64,Atom{Float64,Length{Float64,(Ang,)}},
                               Length{Float64,(Ang,)}},Int64})
    precompile(Tuple{typeof(setindex!),Dict{Symbol,Pseudo},Pseudo,Symbol})
    precompile(Tuple{DFControl.var"#kw##getdefault_pseudo",
                     NamedTuple{(:specifier,),Tuple{String}},typeof(getdefault_pseudo),
                     Symbol,Symbol})
    precompile(Tuple{DFControl.var"#kw##setkpoints!",NamedTuple{(:print,),Tuple{Bool}},
                     typeof(setkpoints!),DFCalculation{QE},NTuple{6,Int64}})
    precompile(Tuple{DFControl.var"#kw##outputdata",
                     NamedTuple{(:print, :overwrite),Tuple{Bool,Bool}},typeof(outputdata),
                     DFCalculation{Wannier90}})
    precompile(Tuple{typeof(setpseudos!),DFJob,Symbol,Symbol})
    precompile(Tuple{DFControl.var"#kw##setdata!",
                     NamedTuple{(:option, :print),Tuple{Symbol,Bool}},typeof(setdata!),
                     DFCalculation{QE},Symbol,String})
    precompile(Tuple{DFControl.var"#kw##setdata!",
                     NamedTuple{(:option, :print),Tuple{Symbol,Bool}},typeof(setdata!),
                     DFCalculation{QE},Symbol,Array{Int64,1}})

    precompile(Tuple{typeof(DFControl.cardoption),String})
    precompile(Tuple{typeof(DFControl.qe_read_projwfc),String})
    precompile(Tuple{typeof(DFControl.parse_mpi_flags),
                     Array{Base.SubString{T} where T<:AbstractString,1}})
    precompile(Tuple{typeof(DFControl.wan_parse_flag_line),String})
    isdefined(DFControl, Symbol("##setdata!#160")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##setdata!#160")),Symbol,Bool,
                         typeof(DFControl.setdata!),DFControl.DFCalculation{DFControl.QE},
                         Symbol,Array{Tuple{Float64,Float64,Float64,Float64},1}})
    precompile(Tuple{typeof(DFControl.strip_split),String,Char})
    isdefined(DFControl, Symbol("##setpseudo!#48")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##setpseudo!#48")),Bool,
                         typeof(DFControl.setpseudo!),
                         DFControl.Atom{Float64,
                                        Unitful.Quantity{Float64,
                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                             1)),)}(),
                                                         Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                             1)),)}()}(0,
                                                                                                                                                                       Base.Rational{Int64}(1,
                                                                                                                                                                                            1)),),
                                                                           Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                               1)),)}(),
                                                                           nothing}}},
                         DFControl.Pseudo})
    isdefined(DFControl, Symbol("##setdata_option!#197")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##setdata_option!#197")),
                         Base.Iterators.Pairs{Symbol,Bool,Tuple{Symbol},
                                              NamedTuple{(:print,),Tuple{Bool}}},
                         typeof(DFControl.setdata_option!),DFControl.DFJob,Array{String,1},
                         Symbol,Symbol})
    precompile(Tuple{typeof(DFControl.has_parseable_exec),String})
    isdefined(DFControl, Symbol("##setdata!#160")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##setdata!#160")),Symbol,Bool,
                         typeof(DFControl.setdata!),DFControl.DFCalculation{DFControl.QE},
                         Symbol,Array{Array{Float64,1},1}})
    isdefined(DFControl, Symbol("##configuredefault_pseudos#386")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##configuredefault_pseudos#386")),
                         String,Base.Dict{Symbol,String},
                         typeof(DFControl.configuredefault_pseudos)})
    precompile(Tuple{typeof(DFControl.write_flag_line),Base.IOStream,Symbol,Array{Int64,1},
                     String,String})
    isdefined(DFControl, Symbol("##qe_read_kpdos#251")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##qe_read_kpdos#251")),Int64,
                         typeof(DFControl.qe_read_kpdos),String,Int64})
    precompile(Tuple{typeof(DFControl.alat),Base.Dict{Symbol,Any},Bool})
    precompile(Tuple{typeof(DFControl.strip_split),String})
    isdefined(DFControl, Symbol("##setpseudos!#64")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##setpseudos!#64")),
                         Base.Iterators.Pairs{Union{},Union{},Tuple{},
                                              NamedTuple{(),Tuple{}}},
                         typeof(DFControl.setpseudos!),
                         DFControl.Structure{Float64,
                                             DFControl.Atom{Float64,
                                                            Unitful.Quantity{Float64,
                                                                             Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                 1)),)}(),
                                                                             Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                                             Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                                 1)),)}()}(0,
                                                                                                                                                                                           Base.Rational{Int64}(1,
                                                                                                                                                                                                                1)),),
                                                                                               Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                   1)),)}(),
                                                                                               nothing}}},
                                             Unitful.Quantity{Float64,
                                                              Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                  1)),)}(),
                                                              Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                              Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                  1)),)}()}(0,
                                                                                                                                                                            Base.Rational{Int64}(1,
                                                                                                                                                                                                 1)),),
                                                                                Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                    1)),)}(),
                                                                                nothing}}},
                         Array{DFControl.AbstractAtom{T,
                                                      LT} where {LT<:(Union{Unitful.Quantity{T,
                                                                                             Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                 1)),)}(),
                                                                                             U},
                                                                            Unitful.Level{L,
                                                                                          S,
                                                                                          Unitful.Quantity{T,
                                                                                                           Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                               1)),)}(),
                                                                                                           U}} where {S} where L} where {U})} where T,
                               1},Symbol,String})
    isdefined(DFControl, Symbol("##setdata!#160")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##setdata!#160")),Symbol,Bool,
                         typeof(DFControl.setdata!),DFControl.DFCalculation{DFControl.QE},
                         Symbol,Array{Int64,1}})
    precompile(Tuple{typeof(DFControl.mergestructures),
                     Array{DFControl.AbstractStructure{T,LT} where {LT} where T,1}})
    isdefined(DFControl, Symbol("##getdefault_pseudo#389")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##getdefault_pseudo#389")),String,
                         typeof(DFControl.getdefault_pseudo),Symbol,Symbol})
    precompile(Tuple{typeof(DFControl.writeexec),Base.IOStream,DFControl.Exec})
    precompile(Tuple{typeof(DFControl.element),Symbol})
    isdefined(DFControl, Symbol("##setkpoints!#171")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##setkpoints!#171")),Bool,
                         typeof(DFControl.setkpoints!),
                         DFControl.DFCalculation{DFControl.QE},
                         Tuple{Int64,Int64,Int64,Int64,Int64,Int64}})
    precompile(Tuple{typeof(DFControl.bandgap),Array{DFControl.DFBand{Float64,K} where K,1},
                     Float64})
    precompile(Tuple{typeof(DFControl.sanitize_magnetization!),DFControl.DFJob})
    precompile(Tuple{typeof(DFControl.kgrid),Int64,Int64,Int64,Type{DFControl.Wannier90}})
    precompile(Tuple{typeof(DFControl.setoradd!),Array{DFControl.InputData,1},
                     DFControl.InputData})
    isdefined(DFControl, Symbol("##writetojob#363")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##writetojob#363")),
                         Base.Iterators.Pairs{Union{},Union{},Tuple{},
                                              NamedTuple{(),Tuple{}}},
                         typeof(DFControl.writetojob),Base.IOStream,DFControl.DFJob,
                         DFControl.DFCalculation{DFControl.QE}})
    precompile(Tuple{typeof(DFControl.isscf),DFControl.DFCalculation{DFControl.Elk}})
    precompile(Tuple{typeof(DFControl.kgrid),Int64,Int64,Int64,Type{DFControl.QE}})
    precompile(Tuple{typeof(DFControl.atoms),DFControl.DFJob,Symbol})
    precompile(Tuple{typeof(DFControl.write_flag_line),Base.IOStream,Symbol,Bool,String,
                     String})
    precompile(Tuple{typeof(DFControl.write_flag_line),Base.IOStream,Symbol,Float64,String,
                     String})
    precompile(Tuple{typeof(DFControl.write_flag_line),Base.IOStream,Symbol,Int64,String,
                     String})
    precompile(Tuple{typeof(DFControl.write_flag_line),Base.IOStream,Symbol,String,String,
                     String})
    precompile(Tuple{typeof(DFControl.sanitize_pseudos!),DFControl.DFJob})
    isdefined(DFControl, Symbol("##setwanenergies!#212")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##setwanenergies!#212")),Float64,
                         typeof(DFControl.setwanenergies!),DFControl.DFJob,
                         DFControl.DFCalculation{DFControl.QE},Float64})
    precompile(Tuple{typeof(DFControl.scale_bondlength!),
                     DFControl.Atom{Float64,
                                    Unitful.Quantity{Float64,
                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                         1)),)}(),
                                                     Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                         1)),)}()}(0,
                                                                                                                                                                   Base.Rational{Int64}(1,
                                                                                                                                                                                        1)),),
                                                                       Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                           1)),)}(),
                                                                       nothing}}},
                     DFControl.Atom{Float64,
                                    Unitful.Quantity{Float64,
                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                         1)),)}(),
                                                     Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                         1)),)}()}(0,
                                                                                                                                                                   Base.Rational{Int64}(1,
                                                                                                                                                                                        1)),),
                                                                       Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                           1)),)}(),
                                                                       nothing}}},Float64,
                     StaticArrays.SArray{Tuple{3,3},
                                         Unitful.Quantity{Float64,
                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                              1)),)}(),
                                                          Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                              1)),)}()}(0,
                                                                                                                                                                        Base.Rational{Int64}(1,
                                                                                                                                                                                             1)),),
                                                                            Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                1)),)}(),
                                                                            nothing}},2,9}})
    isdefined(DFControl, Symbol("##set_Hubbard_U!#222")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##set_Hubbard_U!#222")),Bool,
                         typeof(DFControl.set_Hubbard_U!),DFControl.DFJob,
                         Base.Pair{Symbol,Float64}})
    isdefined(DFControl, Symbol("##setheaderword!#184")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##setheaderword!#184")),Bool,
                         typeof(DFControl.setheaderword!),DFControl.DFJob,
                         Base.Pair{String,String}})
    isdefined(DFControl, Symbol("##gencalc_wan#178")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##gencalc_wan#178")),Float64,
                         Array{Base.Pair{Symbol,Bool},1},DFControl.Exec,
                         typeof(DFControl.gencalc_wan),
                         DFControl.DFCalculation{DFControl.QE},
                         DFControl.Structure{Float64,
                                             DFControl.Atom{Float64,
                                                            Unitful.Quantity{Float64,
                                                                             Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                 1)),)}(),
                                                                             Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                                             Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                                 1)),)}()}(0,
                                                                                                                                                                                           Base.Rational{Int64}(1,
                                                                                                                                                                                                                1)),),
                                                                                               Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                   1)),)}(),
                                                                                               nothing}}},
                                             Unitful.Quantity{Float64,
                                                              Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                  1)),)}(),
                                                              Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                              Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                  1)),)}()}(0,
                                                                                                                                                                            Base.Rational{Int64}(1,
                                                                                                                                                                                                 1)),),
                                                                                Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                    1)),)}(),
                                                                                nothing}}},
                         Float64})
    isdefined(DFControl, Symbol("##setflags!#190")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##setflags!#190")),Bool,
                         typeof(DFControl.setflags!),DFControl.DFJob,
                         Array{DFControl.DFCalculation{P} where P<:DFControl.Package,1},
                         Base.Pair{Symbol,String}})
    precompile(Tuple{typeof(DFControl.extract_atoms!),Base.Dict{Symbol,Any},Array{Symbol,1},
                     DFControl.InputData,DFControl.InputData,
                     StaticArrays.SArray{Tuple{3,3},
                                         Unitful.Quantity{Float64,
                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                              1)),)}(),
                                                          Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                              1)),)}()}(0,
                                                                                                                                                                        Base.Rational{Int64}(1,
                                                                                                                                                                                             1)),),
                                                                            Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                1)),)}(),
                                                                            nothing}},2,9}})
    isdefined(DFControl, Symbol("##outputdata#168")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##outputdata#168")),Bool,Bool,
                         typeof(DFControl.outputdata),
                         DFControl.DFCalculation{DFControl.Wannier90}})
    precompile(Tuple{typeof(DFControl.set_position!),
                     DFControl.Atom{Float64,
                                    Unitful.Quantity{Float64,
                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                         1)),)}(),
                                                     Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                         1)),)}()}(0,
                                                                                                                                                                   Base.Rational{Int64}(1,
                                                                                                                                                                                        1)),),
                                                                       Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                           1)),)}(),
                                                                       nothing}}},
                     StaticArrays.SArray{Tuple{3},
                                         Unitful.Quantity{Float64,
                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                              1)),)}(),
                                                          Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                              1)),)}()}(0,
                                                                                                                                                                        Base.Rational{Int64}(1,
                                                                                                                                                                                             1)),),
                                                                            Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                1)),)}(),
                                                                            nothing}},1,3},
                     StaticArrays.SArray{Tuple{3,3},
                                         Unitful.Quantity{Float64,
                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                              1)),)}(),
                                                          Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                              1)),)}()}(0,
                                                                                                                                                                        Base.Rational{Int64}(1,
                                                                                                                                                                                             1)),),
                                                                            Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                1)),)}(),
                                                                            nothing}},2,9}})
    isdefined(DFControl, Symbol("##set_magnetization!#56")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##set_magnetization!#56")),Bool,
                         typeof(DFControl.set_magnetization!),
                         DFControl.Atom{Float64,
                                        Unitful.Quantity{Float64,
                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                             1)),)}(),
                                                         Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                             1)),)}()}(0,
                                                                                                                                                                       Base.Rational{Int64}(1,
                                                                                                                                                                                            1)),),
                                                                           Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                               1)),)}(),
                                                                           nothing}}},
                         Array{Float64,1}})
    isdefined(DFControl, Symbol("##set_magnetization!#56")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##set_magnetization!#56")),Bool,
                         typeof(DFControl.set_magnetization!),
                         DFControl.Atom{Float64,
                                        Unitful.Quantity{Float64,
                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                             1)),)}(),
                                                         Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                             1)),)}()}(0,
                                                                                                                                                                       Base.Rational{Int64}(1,
                                                                                                                                                                                            1)),),
                                                                           Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                               1)),)}(),
                                                                           nothing}}},
                         Array{Int64,1}})
    isdefined(DFControl, Symbol("##set_Hubbard_U!#50")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##set_Hubbard_U!#50")),Bool,
                         typeof(DFControl.set_Hubbard_U!),
                         DFControl.Atom{Float64,
                                        Unitful.Quantity{Float64,
                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                             1)),)}(),
                                                         Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                             1)),)}()}(0,
                                                                                                                                                                       Base.Rational{Int64}(1,
                                                                                                                                                                                            1)),),
                                                                           Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                               1)),)}(),
                                                                           nothing}}},
                         Float64})
    precompile(Tuple{typeof(DFControl.rm_expr_lhs),String,Expr})
    precompile(Tuple{typeof(DFControl.orbital),Symbol})
    precompile(Tuple{typeof(DFControl.write_job_header),Base.IOStream,DFControl.DFJob})
    precompile(Tuple{typeof(DFControl.setflags!),DFControl.Exec,Base.Pair{Symbol,Int64},
                     Base.Pair{Symbol,Int64}})
    isdefined(DFControl, Symbol("##outputdata#206")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##outputdata#206")),Bool,
                         Base.Iterators.Pairs{Symbol,Bool,Tuple{Symbol},
                                              NamedTuple{(:onlynew,),Tuple{Bool}}},
                         typeof(DFControl.outputdata),DFControl.DFJob,String})
    isdefined(DFControl, Symbol("##setdata_option!#199")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##setdata_option!#199")),
                         Base.Iterators.Pairs{Symbol,Bool,Tuple{Symbol},
                                              NamedTuple{(:print,),Tuple{Bool}}},
                         typeof(DFControl.setdata_option!),DFControl.DFJob,Symbol,Symbol})
    precompile(Tuple{typeof(DFControl.wan_write_projections),Base.IOStream,
                     Array{DFControl.Atom{Float64,
                                          Unitful.Quantity{Float64,
                                                           Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                               1)),)}(),
                                                           Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                           Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                               1)),)}()}(0,
                                                                                                                                                                         Base.Rational{Int64}(1,
                                                                                                                                                                                              1)),),
                                                                             Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                 1)),)}(),
                                                                             nothing}}},1}})
    precompile(Tuple{typeof(DFControl.rm_execflags!),
                     DFControl.DFCalculation{DFControl.Wannier90},String,Symbol})
    isdefined(DFControl, Symbol("##setkpoints!#172")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##setkpoints!#172")),Bool,Symbol,
                         typeof(DFControl.setkpoints!),
                         DFControl.DFCalculation{DFControl.QE},
                         Array{Tuple{Float64,Float64,Float64,Float64},1}})
    precompile(Tuple{typeof(DFControl.qe_DFTU),Int64,Base.Dict{Symbol,Any}})
    isdefined(DFControl, Symbol("##DFCalculation#73")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##DFCalculation#73")),
                         Array{DFControl.Exec,1},Bool,Nothing,String,
                         Type{DFControl.DFCalculation{P} where P<:DFControl.Package},
                         DFControl.DFCalculation{DFControl.QE},String,
                         Base.Pair{Symbol,String}})
    precompile(Tuple{typeof(DFControl.write_cell),Base.IOStream,
                     StaticArrays.SArray{Tuple{3,3},Float64,2,9}})
    precompile(Tuple{typeof(DFControl.expr2file),String,Expr})
    precompile(Tuple{typeof(DFControl.scale_cell!),
                     DFControl.Structure{Float64,
                                         DFControl.Atom{Float64,
                                                        Unitful.Quantity{Float64,
                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                             1)),)}(),
                                                                         Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                             1)),)}()}(0,
                                                                                                                                                                                       Base.Rational{Int64}(1,
                                                                                                                                                                                                            1)),),
                                                                                           Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                               1)),)}(),
                                                                                           nothing}}},
                                         Unitful.Quantity{Float64,
                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                              1)),)}(),
                                                          Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                              1)),)}()}(0,
                                                                                                                                                                        Base.Rational{Int64}(1,
                                                                                                                                                                                             1)),),
                                                                            Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                1)),)}(),
                                                                            nothing}}},
                     Int64})
    precompile(Tuple{typeof(DFControl.getpseudoset),Symbol,DFControl.Pseudo})
    isdefined(DFControl, Symbol("##save#306")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##save#306")),Bool,
                         typeof(DFControl.save),DFControl.DFCalculation{DFControl.QE},
                         DFControl.Structure{Float64,
                                             DFControl.Atom{Float64,
                                                            Unitful.Quantity{Float64,
                                                                             Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                 1)),)}(),
                                                                             Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                                             Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                                 1)),)}()}(0,
                                                                                                                                                                                           Base.Rational{Int64}(1,
                                                                                                                                                                                                                1)),),
                                                                                               Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                   1)),)}(),
                                                                                               nothing}}},
                                             Unitful.Quantity{Float64,
                                                              Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                  1)),)}(),
                                                              Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                              Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                  1)),)}()}(0,
                                                                                                                                                                            Base.Rational{Int64}(1,
                                                                                                                                                                                                 1)),),
                                                                                Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                    1)),)}(),
                                                                                nothing}}},
                         String})
    isdefined(DFControl, Symbol("##write_structure#315")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##write_structure#315")),Bool,
                         typeof(DFControl.write_structure),Base.IOStream,
                         DFControl.DFCalculation{DFControl.QE},
                         DFControl.Structure{Float64,
                                             DFControl.Atom{Float64,
                                                            Unitful.Quantity{Float64,
                                                                             Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                 1)),)}(),
                                                                             Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                                             Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                                 1)),)}()}(0,
                                                                                                                                                                                           Base.Rational{Int64}(1,
                                                                                                                                                                                                                1)),),
                                                                                               Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                   1)),)}(),
                                                                                               nothing}}},
                                             Unitful.Quantity{Float64,
                                                              Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                  1)),)}(),
                                                              Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                              Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                  1)),)}()}(0,
                                                                                                                                                                            Base.Rational{Int64}(1,
                                                                                                                                                                                                 1)),),
                                                                                Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                    1)),)}(),
                                                                                nothing}}}})
    precompile(Tuple{typeof(DFControl.parse_qe_execflags),
                     Array{Base.SubString{T} where T<:AbstractString,1}})
    precompile(Tuple{typeof(DFControl.kakbkc),Array{Array{Float64,1},1}})
    isdefined(DFControl, Symbol("##setflags!#190")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##setflags!#190")),Bool,
                         typeof(DFControl.setflags!),DFControl.DFJob,
                         Array{DFControl.DFCalculation{P} where P<:DFControl.Package,1},
                         Base.Pair{Symbol,Array{Int64,2}}})
    precompile(Tuple{typeof(DFControl.strip_split),Base.SubString{String},Char})
    isdefined(DFControl, Symbol("##setflags!#190")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##setflags!#190")),Bool,
                         typeof(DFControl.setflags!),DFControl.DFJob,
                         Array{DFControl.DFCalculation{P} where P<:DFControl.Package,1},
                         Base.Pair{Symbol,Int64}})
    isdefined(DFControl, Symbol("##setdata_option!#161")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##setdata_option!#161")),Bool,
                         typeof(DFControl.setdata_option!),
                         DFControl.DFCalculation{DFControl.QE},Symbol,Symbol})
    precompile(Tuple{typeof(DFControl.setcutoffs!),
                     DFControl.DFCalculation{DFControl.Wannier90},Float64,Float64})
    isdefined(DFControl, Symbol("##writejobfiles#367")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##writejobfiles#367")),
                         Base.Iterators.Pairs{Union{},Union{},Tuple{},
                                              NamedTuple{(),Tuple{}}},
                         typeof(DFControl.writejobfiles),DFControl.DFJob})
    isdefined(DFControl, Symbol("##setflags!#190")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##setflags!#190")),Bool,
                         typeof(DFControl.setflags!),DFControl.DFJob,
                         Array{DFControl.DFCalculation{P} where P<:DFControl.Package,1},
                         Base.Pair{Symbol,Array{Int64,1}}})
    precompile(Tuple{typeof(DFControl.setexecdir!),
                     DFControl.DFCalculation{DFControl.Wannier90},String,String})
    isdefined(DFControl, Symbol("##setdata_option!#161")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##setdata_option!#161")),Bool,
                         typeof(DFControl.setdata_option!),
                         DFControl.DFCalculation{DFControl.Wannier90},Symbol,Symbol})
    precompile(Tuple{typeof(DFControl.cut_after),Base.SubString{String},Char})
    precompile(Tuple{typeof(DFControl.__init__)})
    isdefined(DFControl, Symbol("##rm_flags!#200")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##rm_flags!#200")),
                         Base.Iterators.Pairs{Symbol,Bool,Tuple{Symbol},
                                              NamedTuple{(:print,),Tuple{Bool}}},
                         typeof(DFControl.rm_flags!),DFControl.DFJob,
                         Array{DFControl.DFCalculation{P} where P<:DFControl.Package,1},
                         Symbol})
    precompile(Tuple{typeof(DFControl.strip_split),Base.SubString{String}})
    precompile(Tuple{typeof(DFControl.cut_after),String,Char})
    precompile(Tuple{typeof(DFControl.documentation),Type{DFControl.Elk},String})
    isdefined(DFControl, Symbol("##DFCalculation#73")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##DFCalculation#73")),
                         Array{DFControl.Exec,1},Bool,
                         Array{Base.Pair{Symbol,Tuple{Symbol,Any}},1},String,
                         Type{DFControl.DFCalculation{P} where P<:DFControl.Package},
                         DFControl.DFCalculation{DFControl.QE},String})
    precompile(Tuple{typeof(DFControl.atoms),
                     DFControl.Structure{Float64,
                                         DFControl.Atom{Float64,
                                                        Unitful.Quantity{Float64,
                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                             1)),)}(),
                                                                         Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                             1)),)}()}(0,
                                                                                                                                                                                       Base.Rational{Int64}(1,
                                                                                                                                                                                                            1)),),
                                                                                           Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                               1)),)}(),
                                                                                           nothing}}},
                                         Unitful.Quantity{Float64,
                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                              1)),)}(),
                                                          Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                              1)),)}()}(0,
                                                                                                                                                                        Base.Rational{Int64}(1,
                                                                                                                                                                                             1)),),
                                                                            Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                1)),)}(),
                                                                            nothing}}},
                     Symbol})
    precompile(Tuple{typeof(DFControl.Emax),Float64,Int64,
                     Array{DFControl.DFBand{Float64,K} where K,1}})
    isdefined(DFControl, Symbol("##setflags!#190")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##setflags!#190")),Bool,
                         typeof(DFControl.setflags!),DFControl.DFJob,
                         Array{DFControl.DFCalculation{P} where P<:DFControl.Package,1},
                         Base.Pair{Symbol,Bool}})
    precompile(Tuple{typeof(DFControl.qe_magnetization),Int64,Base.Dict{Symbol,Any}})
    precompile(Tuple{typeof(DFControl.name),Nothing})
    precompile(Tuple{typeof(DFControl.parse_k_line),String,Type{Int}})
    precompile(Tuple{typeof(DFControl.cleanflags!),
                     DFControl.DFCalculation{DFControl.Wannier90}})
    isdefined(DFControl, Symbol("##setdata!#160")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##setdata!#160")),Symbol,Bool,
                         typeof(DFControl.setdata!),DFControl.DFCalculation{DFControl.QE},
                         Symbol,String})
    isdefined(DFControl, Symbol("##setprojections!#58")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##setprojections!#58")),Bool,
                         typeof(DFControl.setprojections!),
                         DFControl.Structure{Float64,
                                             DFControl.Atom{Float64,
                                                            Unitful.Quantity{Float64,
                                                                             Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                 1)),)}(),
                                                                             Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                                             Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                                 1)),)}()}(0,
                                                                                                                                                                                           Base.Rational{Int64}(1,
                                                                                                                                                                                                                1)),),
                                                                                               Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                   1)),)}(),
                                                                                               nothing}}},
                                             Unitful.Quantity{Float64,
                                                              Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                  1)),)}(),
                                                              Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                              Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                  1)),)}()}(0,
                                                                                                                                                                            Base.Rational{Int64}(1,
                                                                                                                                                                                                 1)),),
                                                                                Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                    1)),)}(),
                                                                                nothing}}},
                         Base.Pair{Symbol,Array{Symbol,1}},
                         Base.Pair{Symbol,Array{Symbol,1}}})
    precompile(Tuple{typeof(DFControl.read_job_line),String})
    precompile(Tuple{typeof(DFControl.write_data),Base.IOStream,Array{Array{Float64,1},1}})
    precompile(Tuple{typeof(DFControl.qe_block_variable),DFControl.QEInputInfo,Symbol})
    precompile(Tuple{typeof(DFControl.extract_atoms),DFControl.InputData,
                     DFControl.InputData,
                     StaticArrays.SArray{Tuple{3,3},
                                         Unitful.Quantity{Float64,
                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                              1)),)}(),
                                                          Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                              1)),)}()}(0,
                                                                                                                                                                        Base.Rational{Int64}(1,
                                                                                                                                                                                             1)),),
                                                                            Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                1)),)}(),
                                                                            nothing}},2,9},
                     Bool})
    precompile(Tuple{typeof(DFControl.cardoption),Base.SubString{String}})
    isdefined(DFControl, Symbol("##outputdata#203")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##outputdata#203")),Bool,Bool,
                         typeof(DFControl.outputdata),DFControl.DFJob,
                         Array{DFControl.DFCalculation{P} where P<:DFControl.Package,1}})
    precompile(Tuple{typeof(DFControl.cleanflags!),DFControl.DFCalculation{DFControl.QE}})
    precompile(Tuple{typeof(DFControl.qe_writeflag),Base.IOStream,Symbol,Array{Float32,2}})
    precompile(Tuple{typeof(DFControl.setcutoffs!),DFControl.DFJob})
    precompile(Tuple{typeof(DFControl.isparseable),DFControl.Exec})
    precompile(Tuple{typeof(DFControl.element),Int64})
    precompile(Tuple{typeof(DFControl.isequal_species),
                     DFControl.Atom{Float64,
                                    Unitful.Quantity{Float64,
                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                         1)),)}(),
                                                     Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                         1)),)}()}(0,
                                                                                                                                                                   Base.Rational{Int64}(1,
                                                                                                                                                                                        1)),),
                                                                       Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                           1)),)}(),
                                                                       nothing}}},
                     DFControl.Atom{Float64,
                                    Unitful.Quantity{Float64,
                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                         1)),)}(),
                                                     Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                         1)),)}()}(0,
                                                                                                                                                                   Base.Rational{Int64}(1,
                                                                                                                                                                                        1)),),
                                                                       Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                           1)),)}(),
                                                                       nothing}}}})
    isdefined(DFControl, Symbol("##writetojob#359")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##writetojob#359")),
                         Base.Iterators.Pairs{Union{},Union{},Tuple{},
                                              NamedTuple{(),Tuple{}}},
                         typeof(DFControl.writetojob),Base.IOStream,DFControl.DFJob,
                         Array{DFControl.DFCalculation{DFControl.Abinit},1}})
    precompile(Tuple{typeof(DFControl.qe_writeflag),Base.IOStream,Symbol,Array{Float32,1}})
    precompile(Tuple{typeof(DFControl.elk_flaginfo),Symbol})
    precompile(Tuple{typeof(DFControl.qe_flaginfo),DFControl.QEInputInfo,Symbol})
    precompile(Tuple{typeof(DFControl.getfirst),typeof(DFControl.isbands),
                     Array{DFControl.DFCalculation{P} where P<:DFControl.Package,1}})
    precompile(Tuple{typeof(DFControl.setflow!),DFControl.DFJob,Base.Pair{String,Bool},
                     Base.Pair{String,Bool}})
    precompile(Tuple{typeof(DFControl.setflow!),DFControl.DFJob,Base.Pair{String,Bool}})
    precompile(Tuple{typeof(DFControl.iscalc_assert),DFControl.DFCalculation{DFControl.QE},
                     String})
    isdefined(DFControl, Symbol("##create_supercell#68")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##create_supercell#68")),Bool,
                         typeof(DFControl.create_supercell),
                         DFControl.Structure{Float64,
                                             DFControl.Atom{Float64,
                                                            Unitful.Quantity{Float64,
                                                                             Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                 1)),)}(),
                                                                             Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                                             Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                                 1)),)}()}(0,
                                                                                                                                                                                           Base.Rational{Int64}(1,
                                                                                                                                                                                                                1)),),
                                                                                               Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                   1)),)}(),
                                                                                               nothing}}},
                                             Unitful.Quantity{Float64,
                                                              Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                  1)),)}(),
                                                              Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                              Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                  1)),)}()}(0,
                                                                                                                                                                            Base.Rational{Int64}(1,
                                                                                                                                                                                                 1)),),
                                                                                Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                    1)),)}(),
                                                                                nothing}}},
                         Int64,Int64,Int64})
    precompile(Tuple{typeof(DFControl.write_data),Base.IOStream,Array{Int64,1}})
    precompile(Tuple{typeof(DFControl.setcell!),DFControl.DFJob,
                     StaticArrays.SArray{Tuple{3,3},
                                         Unitful.Quantity{Float64,
                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                              1)),)}(),
                                                          Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                              1)),)}()}(0,
                                                                                                                                                                        Base.Rational{Int64}(1,
                                                                                                                                                                                             1)),),
                                                                            Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                1)),)}(),
                                                                            nothing}},2,9}})
    precompile(Tuple{typeof(DFControl.readbands),DFControl.DFCalculation{DFControl.QE}})
    isdefined(DFControl, Symbol("##outputdata#168")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##outputdata#168")),Bool,Bool,
                         typeof(DFControl.outputdata),
                         DFControl.DFCalculation{DFControl.QE}})
    precompile(Tuple{typeof(DFControl.issoc),DFControl.DFCalculation{DFControl.Wannier90}})
    precompile(Tuple{typeof(DFControl.set_position!),
                     DFControl.Atom{Float64,
                                    Unitful.Quantity{Float64,
                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                         1)),)}(),
                                                     Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                         1)),)}()}(0,
                                                                                                                                                                   Base.Rational{Int64}(1,
                                                                                                                                                                                        1)),),
                                                                       Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                           1)),)}(),
                                                                       nothing}}},
                     Array{Float64,1},
                     StaticArrays.SArray{Tuple{3,3},
                                         Unitful.Quantity{Float64,
                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                              1)),)}(),
                                                          Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                              1)),)}()}(0,
                                                                                                                                                                        Base.Rational{Int64}(1,
                                                                                                                                                                                             1)),),
                                                                            Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                1)),)}(),
                                                                            nothing}},2,9}})
    precompile(Tuple{typeof(DFControl.parse_wan_execflags),
                     Array{Base.SubString{T} where T<:AbstractString,1}})
    precompile(Tuple{typeof(DFControl.rm_execflags!),DFControl.DFJob,String,Symbol})
    precompile(Tuple{typeof(DFControl.allflags),DFControl.QEInputInfo})
    precompile(Tuple{typeof(DFControl.setlocaldir!),DFControl.DFJob,String})
    isdefined(DFControl, Symbol("##setkpoints!#170")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##setkpoints!#170")),Bool,
                         typeof(DFControl.setkpoints!),
                         DFControl.DFCalculation{DFControl.QE},Tuple{Int64,Int64,Int64}})
    precompile(Tuple{typeof(DFControl.atoms),DFControl.DFJob})
    isdefined(DFControl, Symbol("##qe_read_output#250")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##qe_read_output#250")),
                         Base.Iterators.Pairs{Union{},Union{},Tuple{},
                                              NamedTuple{(),Tuple{}}},
                         typeof(DFControl.qe_read_output),
                         DFControl.DFCalculation{DFControl.QE}})
    precompile(Tuple{typeof(DFControl.getfirst),typeof(DFControl.isscf),
                     Array{DFControl.DFCalculation{P} where P<:DFControl.Package,1}})
    isdefined(DFControl, Symbol("##writetojob#360")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##writetojob#360")),
                         Base.Iterators.Pairs{Union{},Union{},Tuple{},
                                              NamedTuple{(),Tuple{}}},
                         typeof(DFControl.writetojob),Base.IOStream,DFControl.DFJob,
                         Array{DFControl.DFCalculation{DFControl.Elk},1}})
    isdefined(DFControl, Symbol("##qe_read_calculation#270")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##qe_read_calculation#270")),
                         Array{DFControl.Exec,1},Bool,String,
                         typeof(DFControl.qe_read_calculation),String})
    precompile(Tuple{typeof(DFControl.set_magnetization!),
                     DFControl.Structure{Float64,
                                         DFControl.Atom{Float64,
                                                        Unitful.Quantity{Float64,
                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                             1)),)}(),
                                                                         Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                             1)),)}()}(0,
                                                                                                                                                                                       Base.Rational{Int64}(1,
                                                                                                                                                                                                            1)),),
                                                                                           Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                               1)),)}(),
                                                                                           nothing}}},
                                         Unitful.Quantity{Float64,
                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                              1)),)}(),
                                                          Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                              1)),)}()}(0,
                                                                                                                                                                        Base.Rational{Int64}(1,
                                                                                                                                                                                             1)),),
                                                                            Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                1)),)}(),
                                                                            nothing}}},
                     Base.Pair{Symbol,Array{Int64,1}}})
    precompile(Tuple{typeof(DFControl.qe_flaginfo),DFControl.QEControlBlockInfo,Symbol})
    precompile(Tuple{typeof(DFControl.set_magnetization!),
                     DFControl.Structure{Float64,
                                         DFControl.Atom{Float64,
                                                        Unitful.Quantity{Float64,
                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                             1)),)}(),
                                                                         Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                             1)),)}()}(0,
                                                                                                                                                                                       Base.Rational{Int64}(1,
                                                                                                                                                                                                            1)),),
                                                                                           Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                               1)),)}(),
                                                                                           nothing}}},
                                         Unitful.Quantity{Float64,
                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                              1)),)}(),
                                                          Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                              1)),)}()}(0,
                                                                                                                                                                        Base.Rational{Int64}(1,
                                                                                                                                                                                             1)),),
                                                                            Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                1)),)}(),
                                                                            nothing}}},
                     Base.Pair{Symbol,Array{Float64,1}}})
    precompile(Tuple{typeof(DFControl.qe_flaginfo),DFControl.QEDataBlockInfo,Symbol})
    precompile(Tuple{typeof(DFControl.mpi_flag_val),Type{Int64},
                     Array{Base.SubString{T} where T<:AbstractString,1},Int64})
    precompile(Tuple{typeof(DFControl.calculation),DFControl.DFJob,String})
    precompile(Tuple{typeof(DFControl.readfermi),DFControl.DFCalculation{DFControl.QE}})
    isdefined(DFControl, Symbol("#kw##gencalc_scf")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##gencalc_scf")),
                         NamedTuple{(:name,),Tuple{String}},typeof(DFControl.gencalc_scf),
                         DFControl.DFCalculation{DFControl.QE},
                         Tuple{Int64,Int64,Int64,Int64,Int64,Int64}})
    isdefined(DFControl, Symbol("##position_string#55")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##position_string#55")),Bool,
                         typeof(DFControl.position_string),Type{DFControl.QE},
                         DFControl.Atom{Float64,
                                        Unitful.Quantity{Float64,
                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                             1)),)}(),
                                                         Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                             1)),)}()}(0,
                                                                                                                                                                       Base.Rational{Int64}(1,
                                                                                                                                                                                            1)),),
                                                                           Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                               1)),)}(),
                                                                           nothing}}}})
    precompile(Tuple{typeof(DFControl.distance),
                     DFControl.Atom{Float64,
                                    Unitful.Quantity{Float64,
                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                         1)),)}(),
                                                     Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                         1)),)}()}(0,
                                                                                                                                                                   Base.Rational{Int64}(1,
                                                                                                                                                                                        1)),),
                                                                       Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                           1)),)}(),
                                                                       nothing}}},
                     DFControl.Atom{Float64,
                                    Unitful.Quantity{Float64,
                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                         1)),)}(),
                                                     Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                         1)),)}()}(0,
                                                                                                                                                                   Base.Rational{Int64}(1,
                                                                                                                                                                                        1)),),
                                                                       Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                           1)),)}(),
                                                                       nothing}}}})
    isdefined(DFControl, Symbol("#kw##gencalc_nscf")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##gencalc_nscf")),
                         NamedTuple{(:name,),Tuple{String}},typeof(DFControl.gencalc_nscf),
                         DFControl.DFCalculation{DFControl.QE},Tuple{Int64,Int64,Int64}})
    precompile(Tuple{typeof(DFControl.set_starting_magnetization_flags!),
                     DFControl.DFCalculation{DFControl.QE},
                     DFControl.Structure{Float64,
                                         DFControl.Atom{Float64,
                                                        Unitful.Quantity{Float64,
                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                             1)),)}(),
                                                                         Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                             1)),)}()}(0,
                                                                                                                                                                                       Base.Rational{Int64}(1,
                                                                                                                                                                                                            1)),),
                                                                                           Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                               1)),)}(),
                                                                                           nothing}}},
                                         Unitful.Quantity{Float64,
                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                              1)),)}(),
                                                          Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                              1)),)}()}(0,
                                                                                                                                                                        Base.Rational{Int64}(1,
                                                                                                                                                                                             1)),),
                                                                            Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                1)),)}(),
                                                                            nothing}}}})
    isdefined(DFControl, Symbol("##save#182")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##save#182")),
                         Base.Iterators.Pairs{Union{},Union{},Tuple{},
                                              NamedTuple{(),Tuple{}}},
                         typeof(DFControl.save),DFControl.DFJob,String})
    precompile(Tuple{typeof(DFControl.isdefault),Array{DFControl.Projection,1}})
    precompile(Tuple{typeof(DFControl.emptyprojections!),
                     DFControl.Structure{Float64,
                                         DFControl.Atom{Float64,
                                                        Unitful.Quantity{Float64,
                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                             1)),)}(),
                                                                         Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                             1)),)}()}(0,
                                                                                                                                                                                       Base.Rational{Int64}(1,
                                                                                                                                                                                                            1)),),
                                                                                           Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                               1)),)}(),
                                                                                           nothing}}},
                                         Unitful.Quantity{Float64,
                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                              1)),)}(),
                                                          Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                              1)),)}()}(0,
                                                                                                                                                                        Base.Rational{Int64}(1,
                                                                                                                                                                                             1)),),
                                                                            Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                1)),)}(),
                                                                            nothing}}}})
    precompile(Tuple{typeof(DFControl.execs),DFControl.DFJob,String})
    precompile(Tuple{typeof(DFControl.qe_flaginfo),Symbol})
    isdefined(DFControl, Symbol("##gencalc_projwfc#177")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##gencalc_projwfc#177")),String,
                         typeof(DFControl.gencalc_projwfc),
                         DFControl.DFCalculation{DFControl.QE},Int64,Int64,Float64})
    precompile(Tuple{typeof(DFControl.data),DFControl.DFJob,String,Symbol})
    precompile(Tuple{typeof(DFControl.set_hubbard_flags!),
                     DFControl.DFCalculation{DFControl.QE},
                     DFControl.Structure{Float64,
                                         DFControl.Atom{Float64,
                                                        Unitful.Quantity{Float64,
                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                             1)),)}(),
                                                                         Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                             1)),)}()}(0,
                                                                                                                                                                                       Base.Rational{Int64}(1,
                                                                                                                                                                                                            1)),),
                                                                                           Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                               1)),)}(),
                                                                                           nothing}}},
                                         Unitful.Quantity{Float64,
                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                              1)),)}(),
                                                          Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                              1)),)}()}(0,
                                                                                                                                                                        Base.Rational{Int64}(1,
                                                                                                                                                                                             1)),),
                                                                            Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                1)),)}(),
                                                                            nothing}}}})
    precompile(Tuple{typeof(DFControl.setprojections!),DFControl.DFJob,
                     Base.Pair{Symbol,Array{Symbol,1}},Base.Pair{Symbol,Array{Symbol,1}}})
    precompile(Tuple{typeof(DFControl.inpath),DFControl.DFJob,String})
    precompile(Tuple{typeof(DFControl.qe_read_pdos),String})
    precompile(Tuple{typeof(DFControl.getfirst),typeof(DFControl.isnscf),
                     Array{DFControl.DFCalculation{P} where P<:DFControl.Package,1}})
    precompile(Tuple{typeof(DFControl.issoc),DFControl.DFCalculation{DFControl.QE}})
    precompile(Tuple{typeof(DFControl.setexecflags!),
                     DFControl.DFCalculation{DFControl.Wannier90},String,
                     Base.Pair{Symbol,Int64},Base.Pair{Symbol,Int64}})
    precompile(Tuple{typeof(DFControl.setexecflags!),DFControl.DFJob,String,
                     Base.Pair{Symbol,Int64},Base.Pair{Symbol,Int64}})
    precompile(Tuple{typeof(DFControl.nprojections),
                     DFControl.Structure{Float64,
                                         DFControl.Atom{Float64,
                                                        Unitful.Quantity{Float64,
                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                             1)),)}(),
                                                                         Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                             1)),)}()}(0,
                                                                                                                                                                                       Base.Rational{Int64}(1,
                                                                                                                                                                                                            1)),),
                                                                                           Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                               1)),)}(),
                                                                                           nothing}}},
                                         Unitful.Quantity{Float64,
                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                              1)),)}(),
                                                          Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                              1)),)}()}(0,
                                                                                                                                                                        Base.Rational{Int64}(1,
                                                                                                                                                                                             1)),),
                                                                            Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                1)),)}(),
                                                                            nothing}}}})
    precompile(Tuple{typeof(DFControl.setprojections!),DFControl.DFJob,
                     Base.Pair{Symbol,Array{Symbol,1}},Base.Pair{Symbol,Array{Symbol,1}},
                     Base.Pair{Symbol,Array{Symbol,1}}})
    precompile(Tuple{typeof(DFControl.wan_execflag),Symbol})
    precompile(Tuple{typeof(DFControl.extract_structure),String,DFControl.InputData,
                     DFControl.InputData,DFControl.InputData,Bool})
    isdefined(DFControl, Symbol("#kw##setflags!")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##setflags!")),
                         NamedTuple{(:print,),Tuple{Bool}},typeof(DFControl.setflags!),
                         DFControl.DFCalculation{DFControl.QE}})
    isdefined(DFControl, Symbol("##outputdata#206")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##outputdata#206")),Bool,
                         Base.Iterators.Pairs{Union{},Union{},Tuple{},
                                              NamedTuple{(),Tuple{}}},
                         typeof(DFControl.outputdata),DFControl.DFJob,String})
    precompile(Tuple{typeof(DFControl.qe_execflag),Symbol})
    isdefined(DFControl, Symbol("##DFJob#105")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##DFJob#105")),String,String,Type{Int},
                         String,Symbol,String,Array{String,1},Type{DFControl.DFJob},String,
                         String,
                         DFControl.Structure{Float64,
                                             DFControl.Atom{Float64,
                                                            Unitful.Quantity{Float64,
                                                                             Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                 1)),)}(),
                                                                             Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                                             Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                                 1)),)}()}(0,
                                                                                                                                                                                           Base.Rational{Int64}(1,
                                                                                                                                                                                                                1)),),
                                                                                               Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                   1)),)}(),
                                                                                               nothing}}},
                                             Unitful.Quantity{Float64,
                                                              Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                  1)),)}(),
                                                              Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                              Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                  1)),)}()}(0,
                                                                                                                                                                            Base.Rational{Int64}(1,
                                                                                                                                                                                                 1)),),
                                                                                Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                    1)),)}(),
                                                                                nothing}}},
                         Array{Base.Pair{Symbol,
                                         Tuple{Array{DFControl.Exec,1},
                                               Base.Dict{Symbol,Array{T,1} where T}}},1},
                         Base.Pair{Symbol,String},Int})
    precompile(Tuple{typeof(DFControl.isscf),DFControl.DFCalculation{DFControl.QE}})
    precompile(Tuple{typeof(DFControl.mpi_flag),Symbol})
    precompile(Tuple{typeof(DFControl.addprojections!),
                     Array{DFControl.Atom{Float64,
                                          Unitful.Quantity{Float64,
                                                           Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                               1)),)}(),
                                                           Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                           Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                               1)),)}()}(0,
                                                                                                                                                                         Base.Rational{Int64}(1,
                                                                                                                                                                                              1)),),
                                                                             Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                 1)),)}(),
                                                                             nothing}}},1},
                     Base.Dict{Symbol,Array{Symbol,1}},Bool})
    precompile(Tuple{typeof(DFControl.isnscf),DFControl.DFCalculation{DFControl.QE}})
    precompile(Tuple{typeof(DFControl.documentation),Type{DFControl.QE},String})
    precompile(Tuple{typeof(DFControl.data),DFControl.DFCalculation{DFControl.QE},Symbol})
    precompile(Tuple{typeof(DFControl.documentation),Type{DFControl.QE},Symbol})
    precompile(Tuple{typeof(DFControl.is_wannier_exec),DFControl.Exec})
    isdefined(DFControl, Symbol("#kw##setflags!")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##setflags!")),
                         NamedTuple{(:print,),Tuple{Bool}},typeof(DFControl.setflags!),
                         DFControl.DFCalculation{DFControl.QE},Base.Pair{Symbol,Any},
                         Base.Pair{Symbol,Any},Base.Pair{Symbol,Any}})
    precompile(Tuple{typeof(DFControl.is_qe_exec),DFControl.Exec})
    isdefined(DFControl, Symbol("##setpseudos!#219")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##setpseudos!#219")),
                         Base.Iterators.Pairs{Union{},Union{},Tuple{},
                                              NamedTuple{(),Tuple{}}},
                         typeof(DFControl.setpseudos!),DFControl.DFJob,Symbol,String})
    isdefined(DFControl, Symbol("#kw##setprojections!")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##setprojections!")),
                         NamedTuple{(:soc,),Tuple{Bool}},typeof(DFControl.setprojections!),
                         DFControl.Structure{Float64,
                                             DFControl.Atom{Float64,
                                                            Unitful.Quantity{Float64,
                                                                             Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                 1)),)}(),
                                                                             Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                                             Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                                 1)),)}()}(0,
                                                                                                                                                                                           Base.Rational{Int64}(1,
                                                                                                                                                                                                                1)),),
                                                                                               Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                   1)),)}(),
                                                                                               nothing}}},
                                             Unitful.Quantity{Float64,
                                                              Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                  1)),)}(),
                                                              Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                              Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                  1)),)}()}(0,
                                                                                                                                                                            Base.Rational{Int64}(1,
                                                                                                                                                                                                 1)),),
                                                                                Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                    1)),)}(),
                                                                                nothing}}},
                         Base.Pair{Symbol,Array{Symbol,1}},
                         Base.Pair{Symbol,Array{Symbol,1}}})
    precompile(Tuple{typeof(DFControl.setexecdir!),DFControl.DFJob,String,String})
    isdefined(DFControl, Symbol("#kw##setflags!")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##setflags!")),
                         NamedTuple{(:print,),Tuple{Bool}},typeof(DFControl.setflags!),
                         DFControl.DFCalculation{DFControl.Wannier90},
                         Base.Pair{Symbol,String}})
    precompile(Tuple{typeof(DFControl.is_elk_exec),DFControl.Exec})
    precompile(Tuple{typeof(DFControl.save),DFControl.DFCalculation{DFControl.Wannier90},
                     DFControl.Structure{Float64,
                                         DFControl.Atom{Float64,
                                                        Unitful.Quantity{Float64,
                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                             1)),)}(),
                                                                         Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                             1)),)}()}(0,
                                                                                                                                                                                       Base.Rational{Int64}(1,
                                                                                                                                                                                                            1)),),
                                                                                           Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                               1)),)}(),
                                                                                           nothing}}},
                                         Unitful.Quantity{Float64,
                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                              1)),)}(),
                                                          Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                              1)),)}()}(0,
                                                                                                                                                                        Base.Rational{Int64}(1,
                                                                                                                                                                                             1)),),
                                                                            Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                1)),)}(),
                                                                            nothing}}}})
    precompile(Tuple{typeof(DFControl.atom),DFControl.DFJob,Symbol,Int64})
    isdefined(DFControl, Symbol("##DFJob#108")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##DFJob#108")),String,String,Nothing,
                         String,String,Type{DFControl.DFJob},String,Type{Int}})
    precompile(Tuple{typeof(DFControl.setprojections!),DFControl.DFJob,
                     Base.Pair{Symbol,Array{Symbol,1}}})
    isdefined(DFControl, Symbol("##setpseudos!#67")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##setpseudos!#67")),
                         Base.Iterators.Pairs{Union{},Union{},Tuple{},
                                              NamedTuple{(),Tuple{}}},
                         typeof(DFControl.setpseudos!),
                         DFControl.Structure{Float64,
                                             DFControl.Atom{Float64,
                                                            Unitful.Quantity{Float64,
                                                                             Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                 1)),)}(),
                                                                             Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                                             Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                                 1)),)}()}(0,
                                                                                                                                                                                           Base.Rational{Int64}(1,
                                                                                                                                                                                                                1)),),
                                                                                               Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                   1)),)}(),
                                                                                               nothing}}},
                                             Unitful.Quantity{Float64,
                                                              Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                  1)),)}(),
                                                              Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                              Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                  1)),)}()}(0,
                                                                                                                                                                            Base.Rational{Int64}(1,
                                                                                                                                                                                                 1)),),
                                                                                Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                    1)),)}(),
                                                                                nothing}}},
                         Base.Pair{Symbol,DFControl.Pseudo}})
    isdefined(DFControl, Symbol("#kw##setflags!")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##setflags!")),
                         NamedTuple{(:print,),Tuple{Bool}},typeof(DFControl.setflags!),
                         DFControl.DFJob,Base.Pair{Symbol,String}})
    precompile(Tuple{typeof(DFControl.hasprojections_assert),
                     DFControl.Structure{Float64,
                                         DFControl.Atom{Float64,
                                                        Unitful.Quantity{Float64,
                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                             1)),)}(),
                                                                         Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                             1)),)}()}(0,
                                                                                                                                                                                       Base.Rational{Int64}(1,
                                                                                                                                                                                                            1)),),
                                                                                           Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                               1)),)}(),
                                                                                           nothing}}},
                                         Unitful.Quantity{Float64,
                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                              1)),)}(),
                                                          Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                              1)),)}()}(0,
                                                                                                                                                                        Base.Rational{Int64}(1,
                                                                                                                                                                                             1)),),
                                                                            Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                1)),)}(),
                                                                            nothing}}}})
    isdefined(DFControl, Symbol("##progressreport#185")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##progressreport#185")),
                         Base.Iterators.Pairs{Symbol,Bool,Tuple{Symbol,Symbol},
                                              NamedTuple{(:onlynew, :print),
                                                         Tuple{Bool,Bool}}},
                         typeof(DFControl.progressreport),DFControl.DFJob})
    precompile(Tuple{typeof(DFControl.documentation),Type{DFControl.Elk},Symbol})
    isdefined(DFControl, Symbol("##writetojob#364")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##writetojob#364")),
                         Base.Iterators.Pairs{Union{},Union{},Tuple{},
                                              NamedTuple{(),Tuple{}}},
                         typeof(DFControl.writetojob),Base.IOStream,DFControl.DFJob,
                         DFControl.DFCalculation{DFControl.Wannier90}})
    isdefined(DFControl, Symbol("#kw##setflags!")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##setflags!")),
                         NamedTuple{(:print,),Tuple{Bool}},typeof(DFControl.setflags!),
                         DFControl.DFCalculation{DFControl.QE},Base.Pair{Symbol,Int64}})
    isdefined(DFControl, Symbol("#kw##setprojections!")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##setprojections!")),
                         NamedTuple{(:soc,),Tuple{Bool}},typeof(DFControl.setprojections!),
                         DFControl.Structure{Float64,
                                             DFControl.Atom{Float64,
                                                            Unitful.Quantity{Float64,
                                                                             Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                 1)),)}(),
                                                                             Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                                             Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                                 1)),)}()}(0,
                                                                                                                                                                                           Base.Rational{Int64}(1,
                                                                                                                                                                                                                1)),),
                                                                                               Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                   1)),)}(),
                                                                                               nothing}}},
                                             Unitful.Quantity{Float64,
                                                              Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                  1)),)}(),
                                                              Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                              Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                  1)),)}()}(0,
                                                                                                                                                                            Base.Rational{Int64}(1,
                                                                                                                                                                                                 1)),),
                                                                                Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                    1)),)}(),
                                                                                nothing}}},
                         Base.Pair{Symbol,Array{Symbol,1}},
                         Base.Pair{Symbol,Array{Symbol,1}},
                         Base.Pair{Symbol,Array{Symbol,1}}})
    precompile(Tuple{typeof(DFControl.projections),
                     DFControl.Structure{Float64,
                                         DFControl.Atom{Float64,
                                                        Unitful.Quantity{Float64,
                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                             1)),)}(),
                                                                         Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                             1)),)}()}(0,
                                                                                                                                                                                       Base.Rational{Int64}(1,
                                                                                                                                                                                                            1)),),
                                                                                           Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                               1)),)}(),
                                                                                           nothing}}},
                                         Unitful.Quantity{Float64,
                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                              1)),)}(),
                                                          Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                              1)),)}()}(0,
                                                                                                                                                                        Base.Rational{Int64}(1,
                                                                                                                                                                                             1)),),
                                                                            Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                1)),)}(),
                                                                            nothing}}}})
    precompile(Tuple{typeof(DFControl.isvcrelax),DFControl.DFCalculation{DFControl.QE}})
    isdefined(DFControl, Symbol("#kw##rm_flags!")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##rm_flags!")),
                         NamedTuple{(:print,),Tuple{Bool}},typeof(DFControl.rm_flags!),
                         DFControl.DFCalculation{DFControl.QE},Symbol})
    precompile(Tuple{typeof(DFControl.removedefault_pseudodir),Symbol})
    precompile(Tuple{typeof(DFControl.setdefault_pseudodir),Symbol,String})
    precompile(Tuple{typeof(DFControl.rm_execflags!),DFControl.DFCalculation{DFControl.QE},
                     String,Symbol})
    isdefined(DFControl, Symbol("#kw##rm_flags!")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##rm_flags!")),
                         NamedTuple{(:print,),Tuple{Bool}},typeof(DFControl.rm_flags!),
                         DFControl.DFCalculation{DFControl.Wannier90},Symbol})
    isdefined(DFControl, Symbol("##setpseudos!#64")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##setpseudos!#64")),
                         Base.Iterators.Pairs{Union{},Union{},Tuple{},
                                              NamedTuple{(),Tuple{}}},
                         typeof(DFControl.setpseudos!),
                         DFControl.Structure{Float64,
                                             DFControl.Atom{Float64,
                                                            Unitful.Quantity{Float64,
                                                                             Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                 1)),)}(),
                                                                             Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                                             Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                                 1)),)}()}(0,
                                                                                                                                                                                           Base.Rational{Int64}(1,
                                                                                                                                                                                                                1)),),
                                                                                               Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                   1)),)}(),
                                                                                               nothing}}},
                                             Unitful.Quantity{Float64,
                                                              Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                  1)),)}(),
                                                              Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                              Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                  1)),)}()}(0,
                                                                                                                                                                            Base.Rational{Int64}(1,
                                                                                                                                                                                                 1)),),
                                                                                Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                    1)),)}(),
                                                                                nothing}}},
                         Array{DFControl.Atom{Float64,
                                              Unitful.Quantity{Float64,
                                                               Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                   1)),)}(),
                                                               Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                               Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                   1)),)}()}(0,
                                                                                                                                                                             Base.Rational{Int64}(1,
                                                                                                                                                                                                  1)),),
                                                                                 Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                     1)),)}(),
                                                                                 nothing}}},
                               1},Symbol,String})
    isdefined(DFControl, Symbol("#kw##setflags!")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##setflags!")),
                         NamedTuple{(:print,),Tuple{Bool}},typeof(DFControl.setflags!),
                         DFControl.DFCalculation{DFControl.QE},Base.Pair{Symbol,String}})
    isdefined(DFControl, Symbol("#kw##create_supercell")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##create_supercell")),
                         NamedTuple{(:make_afm,),Tuple{Bool}},
                         typeof(DFControl.create_supercell),
                         DFControl.Structure{Float64,
                                             DFControl.Atom{Float64,
                                                            Unitful.Quantity{Float64,
                                                                             Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                 1)),)}(),
                                                                             Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                                             Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                                 1)),)}()}(0,
                                                                                                                                                                                           Base.Rational{Int64}(1,
                                                                                                                                                                                                                1)),),
                                                                                               Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                   1)),)}(),
                                                                                               nothing}}},
                                             Unitful.Quantity{Float64,
                                                              Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                  1)),)}(),
                                                              Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                              Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                  1)),)}()}(0,
                                                                                                                                                                            Base.Rational{Int64}(1,
                                                                                                                                                                                                 1)),),
                                                                                Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                    1)),)}(),
                                                                                nothing}}},
                         Int64,Int64,Int64})
    isdefined(DFControl, Symbol("#kw##qe_read_calculation")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##qe_read_calculation")),
                         NamedTuple{(:execs, :run),Tuple{Array{DFControl.Exec,1},Bool}},
                         typeof(DFControl.qe_read_calculation),String})
    precompile(Tuple{typeof(DFControl.isnoncolincalc),
                     DFControl.DFCalculation{DFControl.QE}})
    precompile(Tuple{typeof(DFControl.setexecdir!),DFControl.DFCalculation{DFControl.QE},
                     String,String})
    isdefined(DFControl, Symbol("##setpseudos!#221")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##setpseudos!#221")),
                         Base.Iterators.Pairs{Union{},Union{},Tuple{},
                                              NamedTuple{(),Tuple{}}},
                         typeof(DFControl.setpseudos!),DFControl.DFJob,
                         Base.Pair{Symbol,DFControl.Pseudo}})
    precompile(Tuple{typeof(DFControl.hasnewout),
                     DFControl.DFCalculation{DFControl.Wannier90},Float64})
    isdefined(DFControl, Symbol("##rm_flags!#202")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##rm_flags!#202")),
                         Base.Iterators.Pairs{Union{},Union{},Tuple{},
                                              NamedTuple{(),Tuple{}}},
                         typeof(DFControl.rm_flags!),DFControl.DFJob,Symbol,Symbol})
    isdefined(DFControl, Symbol("#kw##setflags!")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##setflags!")),
                         NamedTuple{(:print,),Tuple{Bool}},typeof(DFControl.setflags!),
                         DFControl.DFCalculation{DFControl.QE},Base.Pair{Symbol,Bool}})
    precompile(Tuple{typeof(DFControl.flagtype),
                     DFControl.DFCalculation{DFControl.Wannier90},Symbol})
    precompile(Tuple{typeof(DFControl.hasnewout),DFControl.DFCalculation{DFControl.QE},
                     Float64})
    precompile(Tuple{typeof(DFControl.removedefault_pseudos),Symbol})
    precompile(Tuple{typeof(DFControl.strip_split),Base.SubString{String},String})
    precompile(Tuple{typeof(DFControl.isbands),DFControl.DFCalculation{DFControl.QE}})
    precompile(Tuple{typeof(DFControl.set_magnetization!),DFControl.DFJob,
                     Base.Pair{Symbol,Array{Int64,1}}})
    precompile(Tuple{typeof(DFControl.rm_flags!),DFControl.DFCalculation{DFControl.QE},
                     Symbol,Symbol,Symbol})
    precompile(Tuple{typeof(DFControl.isdefault),StaticArrays.SArray{Tuple{3},Float64,1,3}})
    precompile(Tuple{typeof(DFControl.magnetization),
                     DFControl.Atom{Float64,
                                    Unitful.Quantity{Float64,
                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                         1)),)}(),
                                                     Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                         1)),)}()}(0,
                                                                                                                                                                   Base.Rational{Int64}(1,
                                                                                                                                                                                        1)),),
                                                                       Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                           1)),)}(),
                                                                       nothing}}}})
    precompile(Tuple{typeof(DFControl.sanitize_projections!),DFControl.DFJob})
    isdefined(DFControl, Symbol("#findcard#303")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#findcard#303")),String})
    precompile(Tuple{typeof(DFControl.sanitize_flags!),DFControl.DFJob})
    precompile(Tuple{typeof(DFControl.sanitize_flags!),
                     DFControl.DFCalculation{DFControl.QE}})
    precompile(Tuple{typeof(DFControl.degree2π),Float64})
    precompile(Tuple{typeof(DFControl.setexecflags!),DFControl.DFCalculation{DFControl.QE},
                     String,Base.Pair{Symbol,Int64},Base.Pair{Symbol,Int64}})
    isdefined(DFControl, Symbol("##setpseudos!#220")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##setpseudos!#220")),
                         Base.Iterators.Pairs{Union{},Union{},Tuple{},
                                              NamedTuple{(),Tuple{}}},
                         typeof(DFControl.setpseudos!),DFControl.DFJob,Symbol,Symbol,
                         String})
    precompile(Tuple{typeof(DFControl.position_cryst),
                     DFControl.Atom{Float64,
                                    Unitful.Quantity{Float64,
                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                         1)),)}(),
                                                     Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                         1)),)}()}(0,
                                                                                                                                                                   Base.Rational{Int64}(1,
                                                                                                                                                                                        1)),),
                                                                       Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                           1)),)}(),
                                                                       nothing}}}})
    precompile(Tuple{typeof(DFControl.scale_cell!),DFControl.DFJob,Int64})
    precompile(Tuple{typeof(DFControl.inpath),DFControl.DFCalculation{DFControl.Wannier90}})
    precompile(Tuple{typeof(DFControl.position_cart),
                     DFControl.Atom{Float64,
                                    Unitful.Quantity{Float64,
                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                         1)),)}(),
                                                     Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                         1)),)}()}(0,
                                                                                                                                                                   Base.Rational{Int64}(1,
                                                                                                                                                                                        1)),),
                                                                       Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                           1)),)}(),
                                                                       nothing}}}})
    precompile(Tuple{typeof(DFControl.wanenergyranges),Float64,Int64,
                     Array{DFControl.DFBand{Float64,K} where K,1},Float64})
    precompile(Tuple{typeof(DFControl.setpseudos!),
                     DFControl.Structure{Float64,
                                         DFControl.Atom{Float64,
                                                        Unitful.Quantity{Float64,
                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                             1)),)}(),
                                                                         Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                             1)),)}()}(0,
                                                                                                                                                                                       Base.Rational{Int64}(1,
                                                                                                                                                                                                            1)),),
                                                                                           Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                               1)),)}(),
                                                                                           nothing}}},
                                         Unitful.Quantity{Float64,
                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                              1)),)}(),
                                                          Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                              1)),)}()}(0,
                                                                                                                                                                        Base.Rational{Int64}(1,
                                                                                                                                                                                             1)),),
                                                                            Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                1)),)}(),
                                                                            nothing}}},
                     Symbol,Symbol,String})
    precompile(Tuple{typeof(DFControl.rm_flags!),
                     DFControl.DFCalculation{DFControl.Wannier90},Symbol,Symbol,Symbol})
    precompile(Tuple{typeof(DFControl.inpath),DFControl.DFCalculation{DFControl.QE}})
    precompile(Tuple{typeof(DFControl.setpseudos!),
                     DFControl.Structure{Float64,
                                         DFControl.Atom{Float64,
                                                        Unitful.Quantity{Float64,
                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                             1)),)}(),
                                                                         Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                             1)),)}()}(0,
                                                                                                                                                                                       Base.Rational{Int64}(1,
                                                                                                                                                                                                            1)),),
                                                                                           Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                               1)),)}(),
                                                                                           nothing}}},
                                         Unitful.Quantity{Float64,
                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                              1)),)}(),
                                                          Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                              1)),)}()}(0,
                                                                                                                                                                        Base.Rational{Int64}(1,
                                                                                                                                                                                             1)),),
                                                                            Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                1)),)}(),
                                                                            nothing}}},
                     Symbol,String})
    precompile(Tuple{typeof(DFControl.setpseudos!),DFControl.DFJob,Symbol})
    precompile(Tuple{typeof(DFControl.qe_exec),DFControl.DFCalculation{DFControl.QE}})
    precompile(Tuple{typeof(DFControl.hasflag),DFControl.DFCalculation{DFControl.QE},
                     Symbol})
    precompile(Tuple{typeof(DFControl.isdefault),DFControl.Pseudo})
    precompile(Tuple{typeof(DFControl.rm_flags!),DFControl.DFJob,Symbol,Symbol,Symbol})
    precompile(Tuple{typeof(DFControl.setname!),DFControl.DFJob,String,String})
    isdefined(DFControl, Symbol("#kw##gencalc_wan")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##gencalc_wan")),
                         NamedTuple{(:Epad, :wanflags),
                                    Tuple{Float64,Array{Base.Pair{Symbol,Bool},1}}},
                         typeof(DFControl.gencalc_wan),
                         DFControl.DFCalculation{DFControl.QE},
                         DFControl.Structure{Float64,
                                             DFControl.Atom{Float64,
                                                            Unitful.Quantity{Float64,
                                                                             Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                 1)),)}(),
                                                                             Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                                             Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                                 1)),)}()}(0,
                                                                                                                                                                                           Base.Rational{Int64}(1,
                                                                                                                                                                                                                1)),),
                                                                                               Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                   1)),)}(),
                                                                                               nothing}}},
                                             Unitful.Quantity{Float64,
                                                              Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                  1)),)}(),
                                                              Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                              Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                  1)),)}()}(0,
                                                                                                                                                                            Base.Rational{Int64}(1,
                                                                                                                                                                                                 1)),),
                                                                                Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                    1)),)}(),
                                                                                nothing}}},
                         Float64})
    precompile(Tuple{typeof(DFControl.bandgap),DFControl.DFJob,Float64})
    precompile(Tuple{typeof(DFControl.isconverged),DFControl.DFCalculation{DFControl.QE}})
    precompile(Tuple{typeof(DFControl.set_magnetization!),DFControl.DFJob,
                     Base.Pair{Symbol,Array{Float64,1}}})
    precompile(Tuple{typeof(DFControl.structure),DFControl.DFJob})
    precompile(Tuple{typeof(DFControl.rm_flags!),DFControl.DFJob,
                     Array{DFControl.DFCalculation{P} where P<:DFControl.Package,1},Symbol,
                     Symbol})
    precompile(Tuple{typeof(DFControl.qe_flaginfo),DFControl.Exec,Symbol})
    precompile(Tuple{typeof(DFControl.getdefault_server)})
    precompile(Tuple{typeof(DFControl.setpseudos!),
                     DFControl.Structure{Float64,
                                         DFControl.Atom{Float64,
                                                        Unitful.Quantity{Float64,
                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                             1)),)}(),
                                                                         Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                             1)),)}()}(0,
                                                                                                                                                                                       Base.Rational{Int64}(1,
                                                                                                                                                                                                            1)),),
                                                                                           Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                               1)),)}(),
                                                                                           nothing}}},
                                         Unitful.Quantity{Float64,
                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                              1)),)}(),
                                                          Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                              1)),)}()}(0,
                                                                                                                                                                        Base.Rational{Int64}(1,
                                                                                                                                                                                             1)),),
                                                                            Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                1)),)}(),
                                                                            nothing}}},
                     Base.Pair{Symbol,DFControl.Pseudo}})
    precompile(Tuple{typeof(DFControl.writetojob),Base.IOStream,DFControl.DFJob,
                     DFControl.DFCalculation{DFControl.QE}})
    precompile(Tuple{typeof(DFControl.projections),DFControl.DFJob})
    precompile(Tuple{typeof(DFControl.getdefault_pseudo),Symbol,Symbol})
    precompile(Tuple{typeof(DFControl.qe_block_variable),String,Symbol})
    precompile(Tuple{typeof(DFControl.save),DFControl.DFCalculation{DFControl.QE},
                     DFControl.Structure{Float64,
                                         DFControl.Atom{Float64,
                                                        Unitful.Quantity{Float64,
                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                             1)),)}(),
                                                                         Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                             1)),)}()}(0,
                                                                                                                                                                                       Base.Rational{Int64}(1,
                                                                                                                                                                                                            1)),),
                                                                                           Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                               1)),)}(),
                                                                                           nothing}}},
                                         Unitful.Quantity{Float64,
                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                              1)),)}(),
                                                          Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                              1)),)}()}(0,
                                                                                                                                                                        Base.Rational{Int64}(1,
                                                                                                                                                                                             1)),),
                                                                            Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                1)),)}(),
                                                                            nothing}}}})
    isdefined(DFControl, Symbol("##rm_flags!#200")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##rm_flags!#200")),
                         Base.Iterators.Pairs{Union{},Union{},Tuple{},
                                              NamedTuple{(),Tuple{}}},
                         typeof(DFControl.rm_flags!),DFControl.DFJob,
                         Array{DFControl.DFCalculation{P} where P<:DFControl.Package,1},
                         Symbol,Symbol})
    precompile(Tuple{typeof(DFControl.setpseudo!),
                     DFControl.Atom{Float64,
                                    Unitful.Quantity{Float64,
                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                         1)),)}(),
                                                     Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                         1)),)}()}(0,
                                                                                                                                                                   Base.Rational{Int64}(1,
                                                                                                                                                                                        1)),),
                                                                       Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                           1)),)}(),
                                                                       nothing}}},
                     DFControl.Pseudo})
    precompile(Tuple{typeof(DFControl.dftu),
                     DFControl.Atom{Float64,
                                    Unitful.Quantity{Float64,
                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                         1)),)}(),
                                                     Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                         1)),)}()}(0,
                                                                                                                                                                   Base.Rational{Int64}(1,
                                                                                                                                                                                        1)),),
                                                                       Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                           1)),)}(),
                                                                       nothing}}}})
    precompile(Tuple{typeof(DFControl.atom),DFControl.DFJob,Symbol})
    precompile(Tuple{typeof(DFControl.extract_cell!),Base.Dict{Symbol,Any},
                     DFControl.InputData})
    precompile(Tuple{typeof(DFControl.cell),DFControl.DFJob})
    precompile(Tuple{typeof(DFControl.name),DFControl.DFCalculation{DFControl.QE}})
    isdefined(DFControl, Symbol("#kw##setprojections!")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##setprojections!")),
                         NamedTuple{(:soc,),Tuple{Bool}},typeof(DFControl.setprojections!),
                         DFControl.Structure{Float64,
                                             DFControl.Atom{Float64,
                                                            Unitful.Quantity{Float64,
                                                                             Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                 1)),)}(),
                                                                             Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                                             Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                                 1)),)}()}(0,
                                                                                                                                                                                           Base.Rational{Int64}(1,
                                                                                                                                                                                                                1)),),
                                                                                               Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                   1)),)}(),
                                                                                               nothing}}},
                                             Unitful.Quantity{Float64,
                                                              Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                  1)),)}(),
                                                              Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                              Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                  1)),)}()}(0,
                                                                                                                                                                            Base.Rational{Int64}(1,
                                                                                                                                                                                                 1)),),
                                                                                Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                    1)),)}(),
                                                                                nothing}}},
                         Base.Pair{Symbol,Array{Symbol,1}}})
    isdefined(DFControl, Symbol("#kw##set_Hubbard_U!")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##set_Hubbard_U!")),
                         NamedTuple{(:print,),Tuple{Bool}},typeof(DFControl.set_Hubbard_U!),
                         DFControl.Atom{Float64,
                                        Unitful.Quantity{Float64,
                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                             1)),)}(),
                                                         Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                             1)),)}()}(0,
                                                                                                                                                                       Base.Rational{Int64}(1,
                                                                                                                                                                                            1)),),
                                                                           Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                               1)),)}(),
                                                                           nothing}}},
                         Float64})
    precompile(Tuple{typeof(DFControl.create_supercell),
                     DFControl.Structure{Float64,
                                         DFControl.Atom{Float64,
                                                        Unitful.Quantity{Float64,
                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                             1)),)}(),
                                                                         Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                             1)),)}()}(0,
                                                                                                                                                                                       Base.Rational{Int64}(1,
                                                                                                                                                                                                            1)),),
                                                                                           Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                               1)),)}(),
                                                                                           nothing}}},
                                         Unitful.Quantity{Float64,
                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                              1)),)}(),
                                                          Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                              1)),)}()}(0,
                                                                                                                                                                        Base.Rational{Int64}(1,
                                                                                                                                                                                             1)),),
                                                                            Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                1)),)}(),
                                                                            nothing}}},
                     Int64,Int64,Int64})
    precompile(Tuple{typeof(DFControl.flagtype),Type{DFControl.QE},DFControl.Exec,Symbol})
    isdefined(DFControl, Symbol("##cif2structure#63")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##cif2structure#63")),String,
                         typeof(DFControl.cif2structure),String})
    precompile(Tuple{typeof(DFControl.execs),DFControl.DFCalculation{DFControl.QE}})
    precompile(Tuple{typeof(DFControl.qe_generate_pw2wancalculation),
                     DFControl.DFCalculation{DFControl.Wannier90},String,
                     Array{DFControl.Exec,1}})
    precompile(Tuple{typeof(DFControl.set_magnetization!),
                     DFControl.Atom{Float64,
                                    Unitful.Quantity{Float64,
                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                         1)),)}(),
                                                     Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                         1)),)}()}(0,
                                                                                                                                                                   Base.Rational{Int64}(1,
                                                                                                                                                                                        1)),),
                                                                       Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                           1)),)}(),
                                                                       nothing}}},
                     Array{Int64,1}})
    precompile(Tuple{typeof(DFControl.projections_string),
                     DFControl.Atom{Float64,
                                    Unitful.Quantity{Float64,
                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                         1)),)}(),
                                                     Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                         1)),)}()}(0,
                                                                                                                                                                   Base.Rational{Int64}(1,
                                                                                                                                                                                        1)),),
                                                                       Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                           1)),)}(),
                                                                       nothing}}}})
    precompile(Tuple{typeof(DFControl.name),DFControl.DFCalculation{DFControl.Wannier90}})
    precompile(Tuple{typeof(DFControl.projections),
                     DFControl.Atom{Float64,
                                    Unitful.Quantity{Float64,
                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                         1)),)}(),
                                                     Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                         1)),)}()}(0,
                                                                                                                                                                   Base.Rational{Int64}(1,
                                                                                                                                                                                        1)),),
                                                                       Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                           1)),)}(),
                                                                       nothing}}}})
    precompile(Tuple{typeof(DFControl.cell),
                     DFControl.Structure{Float64,
                                         DFControl.Atom{Float64,
                                                        Unitful.Quantity{Float64,
                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                             1)),)}(),
                                                                         Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                             1)),)}()}(0,
                                                                                                                                                                                       Base.Rational{Int64}(1,
                                                                                                                                                                                                            1)),),
                                                                                           Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                               1)),)}(),
                                                                                           nothing}}},
                                         Unitful.Quantity{Float64,
                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                              1)),)}(),
                                                          Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                              1)),)}()}(0,
                                                                                                                                                                        Base.Rational{Int64}(1,
                                                                                                                                                                                             1)),),
                                                                            Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                1)),)}(),
                                                                            nothing}}}})
    precompile(Tuple{typeof(DFControl.setserverdir!),DFControl.DFJob,String})
    precompile(Tuple{typeof(DFControl.atoms),
                     DFControl.Structure{Float64,
                                         DFControl.Atom{Float64,
                                                        Unitful.Quantity{Float64,
                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                             1)),)}(),
                                                                         Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                                         Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                             1)),)}()}(0,
                                                                                                                                                                                       Base.Rational{Int64}(1,
                                                                                                                                                                                                            1)),),
                                                                                           Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                               1)),)}(),
                                                                                           nothing}}},
                                         Unitful.Quantity{Float64,
                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                              1)),)}(),
                                                          Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                          Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                              1)),)}()}(0,
                                                                                                                                                                        Base.Rational{Int64}(1,
                                                                                                                                                                                             1)),),
                                                                            Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                1)),)}(),
                                                                            nothing}}}})
    precompile(Tuple{typeof(DFControl.set_magnetization!),
                     DFControl.Atom{Float64,
                                    Unitful.Quantity{Float64,
                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                         1)),)}(),
                                                     Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                         1)),)}()}(0,
                                                                                                                                                                   Base.Rational{Int64}(1,
                                                                                                                                                                                        1)),),
                                                                       Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                           1)),)}(),
                                                                       nothing}}},
                     Array{Float64,1}})
    isdefined(DFControl, Symbol("#kw##gencalc_bands")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##gencalc_bands")),
                         NamedTuple{(:name,),Tuple{String}},typeof(DFControl.gencalc_bands),
                         DFControl.DFCalculation{DFControl.QE},
                         Array{Tuple{Float64,Float64,Float64,Float64},1}})
    precompile(Tuple{typeof(DFControl.name),
                     DFControl.Atom{Float64,
                                    Unitful.Quantity{Float64,
                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                         1)),)}(),
                                                     Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                         1)),)}()}(0,
                                                                                                                                                                   Base.Rational{Int64}(1,
                                                                                                                                                                                        1)),),
                                                                       Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                           1)),)}(),
                                                                       nothing}}}})
    precompile(Tuple{typeof(DFControl.flags),DFControl.DFCalculation{DFControl.Wannier90}})
    precompile(Tuple{typeof(DFControl.getdefault_pseudodirs)})
    isdefined(DFControl, Symbol("##setprojections!#58")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##setprojections!#58")),Bool,
                         typeof(DFControl.setprojections!),
                         DFControl.Structure{Float64,
                                             DFControl.Atom{Float64,
                                                            Unitful.Quantity{Float64,
                                                                             Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                 1)),)}(),
                                                                             Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                                             Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                                 1)),)}()}(0,
                                                                                                                                                                                           Base.Rational{Int64}(1,
                                                                                                                                                                                                                1)),),
                                                                                               Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                   1)),)}(),
                                                                                               nothing}}},
                                             Unitful.Quantity{Float64,
                                                              Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                  1)),)}(),
                                                              Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                              Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                  1)),)}()}(0,
                                                                                                                                                                            Base.Rational{Int64}(1,
                                                                                                                                                                                                 1)),),
                                                                                Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                    1)),)}(),
                                                                                nothing}}},
                         Base.Pair{Symbol,Array{Symbol,1}}})
    precompile(Tuple{typeof(DFControl.pseudo),
                     DFControl.Atom{Float64,
                                    Unitful.Quantity{Float64,
                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                         1)),)}(),
                                                     Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                         1)),)}()}(0,
                                                                                                                                                                   Base.Rational{Int64}(1,
                                                                                                                                                                                        1)),),
                                                                       Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                           1)),)}(),
                                                                       nothing}}}})
    precompile(Tuple{typeof(DFControl.element),
                     DFControl.Atom{Float64,
                                    Unitful.Quantity{Float64,
                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                         1)),)}(),
                                                     Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                         1)),)}()}(0,
                                                                                                                                                                   Base.Rational{Int64}(1,
                                                                                                                                                                                        1)),),
                                                                       Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                           1)),)}(),
                                                                       nothing}}}})
    isdefined(DFControl, Symbol("##DFJob#106")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##DFJob#106")),
                         Base.Iterators.Pairs{Symbol,Any,Tuple{Symbol,Symbol,Symbol,Symbol},
                                              NamedTuple{(:server_dir, :bin_dir, :header,
                                                          :pseudoset),
                                                         Tuple{String,String,
                                                               Array{String,1},Symbol}}},
                         Type{DFControl.DFJob},String,String,String,
                         Array{Base.Pair{Symbol,
                                         Tuple{Array{DFControl.Exec,1},
                                               Base.Dict{Symbol,Array{T,1} where T}}},1},
                         Base.Pair{Symbol,String},Int})
    isdefined(DFControl, Symbol("#kw##setdata_option!")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##setdata_option!")),
                         NamedTuple{(:print,),Tuple{Bool}},
                         typeof(DFControl.setdata_option!),DFControl.DFJob,String,Symbol,
                         Symbol})
    isdefined(DFControl, Symbol("##DFJob#107")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##DFJob#107")),
                         StaticArrays.SArray{Tuple{3,3},
                                             Unitful.Quantity{Float64,
                                                              Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                  1)),)}(),
                                                              Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                              Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                  1)),)}()}(0,
                                                                                                                                                                            Base.Rational{Int64}(1,
                                                                                                                                                                                                 1)),),
                                                                                Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                    1)),)}(),
                                                                                nothing}},2,
                                             9},
                         Array{DFControl.Atom{Float64,
                                              Unitful.Quantity{Float64,
                                                               Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                   1)),)}(),
                                                               Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                               Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                   1)),)}()}(0,
                                                                                                                                                                             Base.Rational{Int64}(1,
                                                                                                                                                                                                  1)),),
                                                                                 Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                     1)),)}(),
                                                                                 nothing}}},
                               1},String,String,String,Nothing,String,Type{DFControl.DFJob},
                         DFControl.DFJob,Base.Pair{Symbol,Bool}})
    precompile(Tuple{typeof(DFControl.write_flag_line),Base.IOStream,Symbol,Array{Int64,1}})
    precompile(Tuple{typeof(DFControl.setdefault_server),String})
    precompile(Tuple{typeof(DFControl.orbsize),Symbol})
    isdefined(DFControl, Symbol("#kw##rm_flags!")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##rm_flags!")),
                         NamedTuple{(:print,),Tuple{Bool}},typeof(DFControl.rm_flags!),
                         DFControl.DFJob,Symbol})
    precompile(Tuple{typeof(DFControl.extract_structure!),String,Base.Dict{Symbol,Any},
                     DFControl.InputData,Array{Symbol,1},DFControl.InputData,
                     DFControl.InputData})
    isdefined(DFControl, Symbol("#kw##setflags!")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##setflags!")),
                         NamedTuple{(:print,),Tuple{Bool}},typeof(DFControl.setflags!),
                         DFControl.DFJob,Base.Pair{Symbol,Array{Int64,2}}})
    isdefined(DFControl, Symbol("#kw##setkpoints!")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##setkpoints!")),
                         NamedTuple{(:print,),Tuple{Bool}},typeof(DFControl.setkpoints!),
                         DFControl.DFCalculation{DFControl.QE},
                         Tuple{Int64,Int64,Int64,Int64,Int64,Int64}})
    isdefined(DFControl, Symbol("#kw##setflags!")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##setflags!")),
                         NamedTuple{(:print,),Tuple{Bool}},typeof(DFControl.setflags!),
                         DFControl.DFJob,Base.Pair{Symbol,Int64}})
    precompile(Tuple{typeof(DFControl.setpseudos!),DFControl.DFJob,
                     Base.Pair{Symbol,DFControl.Pseudo}})
    isdefined(DFControl, Symbol("#kw##setflags!")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##setflags!")),
                         NamedTuple{(:print,),Tuple{Bool}},typeof(DFControl.setflags!),
                         DFControl.DFJob,Base.Pair{Symbol,Array{Int64,1}}})
    isdefined(DFControl, Symbol("#kw##setdata_option!")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##setdata_option!")),
                         NamedTuple{(:print,),Tuple{Bool}},
                         typeof(DFControl.setdata_option!),DFControl.DFJob,Symbol,Symbol})
    precompile(Tuple{typeof(DFControl.bandgap),DFControl.DFJob})
    isdefined(DFControl, Symbol("#kw##configuredefault_pseudos")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##configuredefault_pseudos")),
                         NamedTuple{(:pseudo_dirs,),Tuple{Base.Dict{Symbol,String}}},
                         typeof(DFControl.configuredefault_pseudos)})
    isdefined(DFControl, Symbol("#kw##setflags!")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##setflags!")),
                         NamedTuple{(:print,),Tuple{Bool}},typeof(DFControl.setflags!),
                         DFControl.DFCalculation{DFControl.Wannier90},
                         Base.Pair{Symbol,Int64}})
    isdefined(DFControl, Symbol("#kw##setflags!")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##setflags!")),
                         NamedTuple{(:print,),Tuple{Bool}},typeof(DFControl.setflags!),
                         DFControl.DFCalculation{DFControl.Wannier90},
                         Base.Pair{Symbol,Bool}})
    isdefined(DFControl, Symbol("#kw##outputdata")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##outputdata")),
                         NamedTuple{(:print, :onlynew),Tuple{Bool,Bool}},
                         typeof(DFControl.outputdata),DFControl.DFJob})
    isdefined(DFControl, Symbol("#kw##setflags!")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##setflags!")),
                         NamedTuple{(:print,),Tuple{Bool}},typeof(DFControl.setflags!),
                         DFControl.DFCalculation{DFControl.QE},
                         Base.Pair{Symbol,Array{Int64,1}}})
    precompile(Tuple{typeof(DFControl.kgrid),Int64,Int64,Int64,Symbol})
    isdefined(DFControl, Symbol("#kw##setflags!")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##setflags!")),
                         NamedTuple{(:print,),Tuple{Bool}},typeof(DFControl.setflags!),
                         DFControl.DFCalculation{DFControl.QE},
                         Base.Pair{Symbol,Array{Int64,2}}})
    isdefined(DFControl, Symbol("#kw##progressreport")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##progressreport")),
                         NamedTuple{(:onlynew, :print),Tuple{Bool,Bool}},
                         typeof(DFControl.progressreport),DFControl.DFJob})
    precompile(Tuple{typeof(DFControl.flagtype),DFControl.DFCalculation{DFControl.QE},
                     Symbol})
    isdefined(DFControl, Symbol("#kw##getdefault_pseudo")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##getdefault_pseudo")),
                         NamedTuple{(:specifier,),Tuple{String}},
                         typeof(DFControl.getdefault_pseudo),Symbol,Symbol})
    precompile(Tuple{typeof(DFControl.setpseudos!),DFControl.DFJob,Symbol,Symbol})
    isdefined(DFControl, Symbol("#kw##setkpoints!")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##setkpoints!")),
                         NamedTuple{(:print,),Tuple{Bool}},typeof(DFControl.setkpoints!),
                         DFControl.DFCalculation{DFControl.QE},
                         Array{Tuple{Float64,Float64,Float64,Float64},1}})
    precompile(Tuple{typeof(DFControl.searchcalculations),DFControl.DFJob,
                     Type{DFControl.QE}})
    isdefined(DFControl, Symbol("#kw##setdata!")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##setdata!")),
                         NamedTuple{(:option, :print),Tuple{Symbol,Bool}},
                         typeof(DFControl.setdata!),DFControl.DFCalculation{DFControl.QE},
                         Symbol,Array{Int64,1}})
    isdefined(DFControl, Symbol("#kw##setwanenergies!")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##setwanenergies!")),
                         NamedTuple{(:Epad,),Tuple{Float64}},
                         typeof(DFControl.setwanenergies!),DFControl.DFJob,
                         DFControl.DFCalculation{DFControl.QE},Float64})
    isdefined(DFControl, Symbol("#kw##setheaderword!")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##setheaderword!")),
                         NamedTuple{(:print,),Tuple{Bool}},typeof(DFControl.setheaderword!),
                         DFControl.DFJob,Base.Pair{String,String}})
    isdefined(DFControl, Symbol("#kw##outputdata")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##outputdata")),
                         NamedTuple{(:onlynew,),Tuple{Bool}},typeof(DFControl.outputdata),
                         DFControl.DFJob,String})
    isdefined(DFControl, Symbol("#kw##outputdata")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##outputdata")),
                         NamedTuple{(:print, :overwrite),Tuple{Bool,Bool}},
                         typeof(DFControl.outputdata),
                         DFControl.DFCalculation{DFControl.QE}})
    isdefined(DFControl, Symbol("#kw##outputdata")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##outputdata")),
                         NamedTuple{(:print, :overwrite),Tuple{Bool,Bool}},
                         typeof(DFControl.outputdata),
                         DFControl.DFCalculation{DFControl.Wannier90}})
    isdefined(DFControl, Symbol("#kw##setkpoints!")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##setkpoints!")),
                         NamedTuple{(:print,),Tuple{Bool}},typeof(DFControl.setkpoints!),
                         DFControl.DFCalculation{DFControl.QE},Tuple{Int64,Int64,Int64}})
    isdefined(DFControl, Symbol("#kw##setdata_option!")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##setdata_option!")),
                         NamedTuple{(:print,),Tuple{Bool}},
                         typeof(DFControl.setdata_option!),
                         DFControl.DFCalculation{DFControl.QE},Symbol,Symbol})
    isdefined(DFControl, Symbol("#kw##setdata_option!")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##setdata_option!")),
                         NamedTuple{(:print,),Tuple{Bool}},
                         typeof(DFControl.setdata_option!),
                         DFControl.DFCalculation{DFControl.Wannier90},Symbol,Symbol})
    isdefined(DFControl, Symbol("#kw##setdata!")) &&
        precompile(Tuple{getfield(DFControl, Symbol("#kw##setdata!")),
                         NamedTuple{(:option, :print),Tuple{Symbol,Bool}},
                         typeof(DFControl.setdata!),DFControl.DFCalculation{DFControl.QE},
                         Symbol,String})
    precompile(Tuple{typeof(DFControl.save),DFControl.DFJob})
    precompile(Tuple{typeof(DFControl.projections),DFControl.DFJob,Symbol,Int64})
    precompile(Tuple{typeof(DFControl.write_flag_line),Base.IOStream,Symbol,Float64})
    precompile(Tuple{typeof(DFControl.getpseudoset),
                     DFControl.Atom{Float64,
                                    Unitful.Quantity{Float64,
                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                         1)),)}(),
                                                     Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                     Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                         1)),)}()}(0,
                                                                                                                                                                   Base.Rational{Int64}(1,
                                                                                                                                                                                        1)),),
                                                                       Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                           1)),)}(),
                                                                       nothing}}}})
    isdefined(DFControl, Symbol("##setatoms!#218")) &&
        precompile(Tuple{getfield(DFControl, Symbol("##setatoms!#218")),Symbol,String,
                         typeof(DFControl.setatoms!),DFControl.DFJob,
                         Array{DFControl.Atom{Float64,
                                              Unitful.Quantity{Float64,
                                                               Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                   1)),)}(),
                                                               Unitful.FreeUnits{(Unitful.Unit{:Angstrom,
                                                                                               Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                                   1)),)}()}(0,
                                                                                                                                                                             Base.Rational{Int64}(1,
                                                                                                                                                                                                  1)),),
                                                                                 Unitful.Dimensions{(Unitful.Dimension{:Length}(Base.Rational{Int64}(1,
                                                                                                                                                     1)),)}(),
                                                                                 nothing}}},
                               1}})
    precompile(Tuple{typeof(DFControl.outputdata),DFControl.DFJob,String})
    precompile(Tuple{typeof(DFControl.write_flag_line),Base.IOStream,Symbol,Bool})
    precompile(Tuple{typeof(DFControl.write_flag_line),Base.IOStream,Symbol,Int64})
    precompile(Tuple{typeof(DFControl.set_Hubbard_U!),DFControl.DFJob,
                     Base.Pair{Symbol,Float64}})
    precompile(Tuple{typeof(DFControl.gencalc_projwfc),
                     DFControl.DFCalculation{DFControl.QE},Int64,Int64,Float64})
    precompile(Tuple{typeof(DFControl.sanitize_flags!),
                     DFControl.DFCalculation{DFControl.Wannier90}})
    precompile(Tuple{typeof(DFControl.write_flag_line),Base.IOStream,Symbol,String})
    precompile(Tuple{typeof(DFControl.isdefault),DFControl.DFTU{Float64}})
    return precompile(Tuple{typeof(DFControl.projections),DFControl.DFJob,Symbol})
end
