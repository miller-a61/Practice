use strict;
use warnings;
use 5.20.1;
select(STDOUT); $| = 1; # DO NOT REMOVE

chomp(my $rounds = <STDIN>);
chomp(my $cash = <STDIN>);
for my $i (0..$rounds-1) {
    chomp(my $play = <STDIN>);
    #print "$cash $play\n";
    my @play = split(' ',$play);

    my $target;
    my $bet = int($cash/4 + 0.99);
    #print "$bet\n";
    $cash = $cash - $bet;
    my $ball = $play[0];
    my $call = $play[1];
    if ($call eq "PLAIN") {
        $target = $play[2];
    }
    
    if ($call eq "PLAIN" && $ball == $target) {
        $cash  = $cash + $bet * 36;
    }elsif ($call eq "EVEN" && $ball > 0 && $ball % 2 == 0) {
        $cash = $cash + $bet * 2;
    }elsif ($call eq "ODD" && $ball % 2 == 1) {
        $cash = $cash + $bet * 2;
    }else {

    }

}
print "$cash\n";