include("utils.jl")

build_so("008")

type Foo
   i::Cint
end

x = 13

y = ccall(
    (:bar, "binary/lib008.so"),
    Foo,
    (Cint, ),
    x
)

@assert y.i == x

y.i = 42

@assert y.i == 42
