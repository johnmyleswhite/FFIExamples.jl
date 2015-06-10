include("utils.jl")

build_so("007")

type Foo
   i::Cint
end

x = Foo(13)

y = ccall(
    (:bar, "binary/lib007.so"),
    Void,
    (Ref{Foo}, ),
    Ref(x)
)

@assert x.i == 42

@assert y === nothing
