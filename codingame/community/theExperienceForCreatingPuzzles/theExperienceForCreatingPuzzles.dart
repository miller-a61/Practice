import 'dart:io';
import 'dart:math';

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 **/
void main() {
    int lvl = int.parse(stdin.readLineSync());
    int needed = int.parse(stdin.readLineSync());
    int xp = int.parse(stdin.readLineSync());

    xp = xp * 300;
    
    while ( xp >= needed) {
        lvl = lvl + 1;
        xp = xp - needed;
        needed = ( lvl * 10 * sqrt(lvl)).toInt();
    }
    print(lvl);
    print(needed - xp);
}