var rounds = parseInt(readline());
var cash = parseInt(readline());
for (var i = 0; i < rounds; i++) {
    var play = readline().split(" ");
    //print(play);
    var bet = Math.ceil(cash/4);
    cash -= bet;
    ball = parseInt(play[0]);
    call = play[1];
    if (call == "PLAIN") {
        target = parseInt(play[2]);
    }

    x = call == "ODD";
    if (call == "PLAIN" && ball == target) {
        cash  += bet * 36;
    }else if (call == "EVEN" && ball > 0 && ball % 2 == 0) {
        cash += bet * 2;
    }else if (call == "ODD" && ball % 2 == 1) {
        cash += bet * 2;
    }
}

print(cash);