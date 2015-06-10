include("utils.jl")

build_so("010")

x = Array(Vector{Float64}, 3)
x[1] = [0.1, 0.2, 0.3]
x[2] = [0.4, 0.5, 0.6]
x[3] = [0.7, 0.8, 0.9]

y = ccall(
    (:foo, "binary/lib010.so"),
    Void,
    (Ptr{Ptr{Cdouble}}, Cint, Cint),
    x, length(x), length(x[1])
)

@assert x[1] == [0.1, 0.2, 0.3] + 1.0
@assert x[2] == [0.4, 0.5, 0.6] + 1.0
@assert x[3] == [0.7, 0.8, 0.9] + 1.0

@assert y === nothing
