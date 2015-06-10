include("utils.jl")

build_so("009")

x = [0.1, 0.2, 0.3, 0.4, 0.5]

y = ccall(
    (:foo, "binary/lib009.so"),
    Void,
    (Ptr{Cdouble}, Cint),
    x, length(x)
)

@assert x == [0.1, 0.2, 0.3, 0.4, 0.5] + 1.0

@assert y === nothing
