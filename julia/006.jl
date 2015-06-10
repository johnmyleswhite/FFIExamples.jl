include("utils.jl")

build_so("006")

immutable Foo
   i::Cint
end

x = Foo(13)

y = ccall(
    (:bar, "binary/lib006.so"),
    Cint,
    (Foo, ),
    x
)

@assert y == x.i
