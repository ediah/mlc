program {
    write("Нечётные числа от 1 до 9:");
    for (int i = 0; i < 10; i = i + 1) {
        if (i % 2 == 0) continue;
        write(i);
    }
}