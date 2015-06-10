void foo(double** x, int m, int n) {
    for (int i = 0; i < m; i++) {
        for (int j = 0; j < n; j++) {
            x[i][j] += 1.0;
        }
    }

    return;
}
