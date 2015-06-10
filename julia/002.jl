include("utils.jl")

build_so("002")

x = 5.3

y = Ref(x)

z = ccall(
    (:foo, "binary/lib002.so"),
    Void,
    (Ref{Cdouble}, ),
    y
)

@assert y[] == x + 3.14

@assert z === nothing
