import 'dart:io';
import 'dart:math';

void main() {
    int rnds = int.parse(stdin.readLineSync());
    int cash = int.parse(stdin.readLineSync());
    for (int i = 0; i < rnds; i++) {
        String play = stdin.readLineSync();
    
        int bet = (cash/4).ceil().toInt();
        cash = cash - bet;
        List<string> plays = play.split(' ');
        int ball = int.parse(plays[0]);
        String call = plays[1];
        int target;
        if (call == "PLAIN"){
            target = int.parse(plays[2]);
        }
        
        if (call == "PLAIN" && ball == target) {
            cash = cash + (bet * 36);
        }else if (call == "EVEN" && ball > 0 && ball % 2 == 0) {
            cash = cash + (bet * 2);
        }else if (call == "ODD" && ball % 2 == 1) {
            cash = cash + (bet * 2);
        }
    }
    print(cash);
}