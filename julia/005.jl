include("utils.jl")

build_so("005")

immutable Foo
   i::Cint
end

x = 13

y = ccall(
    (:bar, "binary/lib005.so"),
    Foo,
    (Cint, ),
    x
)

@assert y.i == 13
