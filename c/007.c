struct Foo {
    int i;
};

void bar(struct Foo* x) {
    x->i = 42;
    return;
}
