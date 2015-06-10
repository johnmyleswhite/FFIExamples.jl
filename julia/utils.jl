function build_so(i::String)
    # Remove any existing shared library
    run(`rm -f binary/lib$(i).so`)

    # Build a shared library
    run(`gcc -Wall -Werror -fpic -shared -o binary/lib$(i).so c/$(i).c`)

    return
end
