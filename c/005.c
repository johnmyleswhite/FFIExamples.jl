struct Foo {
    int i;
};

struct Foo bar(int x) {
    struct Foo res;
    res.i = x;
    return res;
}
