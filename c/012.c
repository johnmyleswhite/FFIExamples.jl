struct Foo {
    int a;
    int b;
};

void bar(struct Foo *xs, int n) {
    for (int i = 0; i < n; i++) {
        xs[i].a += 1;
    }
    return;
}
