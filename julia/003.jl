include("utils.jl")

build_so("003")

x = "abcdef"

y = ccall(
    (:foo, "binary/lib003.so"),
    Void,
    (Ptr{Uint8}, Cint),
    x, length(x)
)

@assert x == "bcdefg"

@assert y === nothing
