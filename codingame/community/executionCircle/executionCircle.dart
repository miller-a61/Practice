import 'dart:io';
import 'dart:math';

void main() {
    List inputs;
    inputs = stdin.readLineSync().split(' ');
    int n = int.parse(inputs[0]);
    int s = int.parse(inputs[1]);
    String d = stdin.readLineSync();

    int x = 2;
    int answer = 0;
    
    while (x * 2 < n) {
        x = x * 2;
    }
    
    if (d == "LEFT") {
        answer = s + (2 * (n - x));
    }else{
        answer = s - (2 * (n - x));
    }
    
    if (answer < 0) {
        answer = answer + n;
    }
    
    if (answer > n ) {
        answer = answer - n;
    }
    print(answer);
}