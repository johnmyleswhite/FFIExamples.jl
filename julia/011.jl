include("utils.jl")

build_so("011")

x = [
    "abc",
    "def",
    "gh",
]

ns = Cint[
    3,
    3,
    2
]

y = ccall(
    (:foo, "binary/lib011.so"),
    Void,
    (Ptr{Ptr{Uint8}}, Cint, Ptr{Cint}),
    x, length(x), ns,
)

@assert x[1] == "bcd"
@assert x[2] == "efg"
@assert x[3] == "hi"

@assert y === nothing
