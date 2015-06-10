void foo(char** x, int m, int* ns) {
    for (int i = 0; i < m; i++) {
        for (int j = 0; j < ns[i]; j++) {
            x[i][j] = x[i][j] + 1;
        }
    }

    return;
}
