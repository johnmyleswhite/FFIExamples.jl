struct Foo {
    int i;
};

struct Foo bar(int x) {
    struct Foo y;
    y.i = x;
    return y;
}
