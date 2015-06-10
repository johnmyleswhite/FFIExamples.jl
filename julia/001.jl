include("utils.jl")

build_so("001")

x = 5.3

y = ccall(
    (:foo, "binary/lib001.so"),
    Cdouble,
    (Cdouble, ),
    x
)

@assert y == x + 3.14
