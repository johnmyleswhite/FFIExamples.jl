files = [
    "001.jl",
    "002.jl",
    "003.jl",
    "004.jl",
    "005.jl",
    "006.jl",
    "007.jl",
    "008.jl",
    "009.jl",
    "010.jl",
    "011.jl",
    "012.jl",
]

for file in files
    path = joinpath("julia", file)
    cmd = `julia-0.4 $path`
    println(cmd)
    run(cmd)
end
