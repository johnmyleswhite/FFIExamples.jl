FFIExamples.jl
==============

Many small examples that demonstrate how Julia's FFI works as of v0.4.

# Examples

* 001: Pass a `Float64` from Julia to C by copying the value. Return a `Float64` from C to Julia by copying the value.

* 002: Pass a `Float64` from Julia to C by copying a reference to the value. Return a `Void` value from C to Julia as a no-op.

* 003: Pass an `ASCIIString` from Julia to C by copying a reference to the string's raw bytes. Mutate the raw byte vector inside the C function. Return a `Void` value from C to Julia as a no-op.

* 004: Pass no arguments to a C function that returns a pointer to a static `Vector{Uint8}` whose memory is owned by C. Make a copy of the vector and interpret it as a string using `bytestring`. This creates an `ASCIIString` value that Julia's GC will free when appropriate.

* 005: Pass a primitive integer type from Julia to C by copying the value. Return a user-defined `isbits` immutable struct by copying the value. Note that both Julia and C need to define the struct independently, but using equivalent memory layouts.

* 006: Pass a user-defined `isbits` immutable struct from Julia to C by copying the value. Return a primitive integer type by copying the result value.

* 007: Pass a user-defined mutable struct from Julia to C by copying a reference to the value. Mutate the struct's contents in C. Return `Void`.

* 008: Pass a primitive integer type from Julia to C by coping the value. Return a user-defined mutable struct by copying the value.

* 009: Pass a vector of primitive floating point type from Julia to C by copying a reference to the vector along with a copy of the array's length as a primitive integer type. Mutate the array in C. Return `Void`.

* 010: Pass a vector of vectors of primitive floating point type from Julia to C by copying a reference to the vector of vectors along with a copy of the outer vector's length and a copy of the inner vector's common length. Mutate each of the inner vectors in C. Return `Void`.

* 011: Pass a vector of `ASCIIString` objects from Julia to C by copying a reference to a vector of strings long with a copy of the outer vector's length and a reference to a vector of primitive integers, each of which represents the length of an individual string in the vector. Mutate each string in C. Return `Void`.

* 012: Pass a vector of user-defined immutable structs from Julia to C by copying a reference to the vector along with a copy of the vector's length as a primitive integer value. Mutate each of the structs in C, thereby violating Julia's internal-to-Julia requirement that immutable objects never be mutated. Return `Void`.
