include("utils.jl")

build_so("012")

immutable Foo
   a::Cint
   b::Cint
end

xs = [Foo(1, 2), Foo(3, 4)]

y = ccall(
    (:bar, "binary/lib012.so"),
    Void,
    (Ptr{Foo}, Cint),
    pointer(xs), length(xs)
)

@assert xs[1] == Foo(2, 2)
@assert xs[2] == Foo(4, 4)

@assert y === nothing
