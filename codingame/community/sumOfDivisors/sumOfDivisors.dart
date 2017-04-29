import 'dart:io';
import 'dart:math';

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 **/
void main() {
    int x = int.parse(stdin.readLineSync());
    int y = (x/2).toInt();
    int z = y;
    int a,b;
    for (int i = 1; i <= y; i++) {
        z += (y/i).toInt() * (1+ (x/i).toInt());
        if ( (x/i).toInt() %2==1 )
    	z += 1+ (y/i).toInt();
        }

    print(z.toInt());
}