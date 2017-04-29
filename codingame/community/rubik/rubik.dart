import 'dart:io';
import 'dart:math';

void main() {
    int N = int.parse(stdin.readLineSync());

    if (N > 1)
        N = N * 6 * (N - 2) + 8;
    print(N);
}