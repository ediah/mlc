def iterate(shared int a): shared int {
    for (int i = 1; i <= 5; i = i + 1) {
        /* write("Итерация #", i, ": a = ", a); */
        a = a / 2;
    }
    return a;
}

program {
    shared int x, y;
    
    read(x);
    read(y);

    thread:1 { x = iterate(x); }
    thread:2 { y = iterate(y); }

    fork(1, 2);
    lock();

    write(x, " ", y);
}