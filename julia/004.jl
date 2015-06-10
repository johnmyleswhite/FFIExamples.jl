include("utils.jl")

build_so("004")

x = ccall(
    (:foo, "binary/lib004.so"),
    Ptr{Uint8},
    ()
)

y = bytestring(x)

@assert y == "foobar"
