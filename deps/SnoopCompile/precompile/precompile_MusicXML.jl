function _precompile_()
    ccall(:jl_generating_output, Cint, ()) == 1 || return nothing
    precompile(Tuple{typeof(findfirst),Function,Array{ScorePart,1}})
    precompile(Tuple{typeof(getproperty),Measure,Symbol})
    precompile(Tuple{typeof(getproperty),Note,Symbol})
    precompile(Tuple{typeof(getproperty),PartList,Symbol})
    precompile(Tuple{typeof(getproperty),ScorePartwise,Symbol})
    precompile(Tuple{typeof(isnothing),Pitch})
    precompile(Tuple{typeof(iterate),Array{Measure,1}})
    precompile(Tuple{typeof(iterate),Array{Note,1}})
    precompile(Tuple{typeof(iterate),Array{Part,1}})
    precompile(Tuple{typeof(println),Base.PipeEndpoint,Pitch})
    precompile(Tuple{typeof(println),Pitch})
    precompile(Tuple{typeof(readmusicxml),String})
    precompile(Tuple{typeof(sizeof),Pitch})
end
