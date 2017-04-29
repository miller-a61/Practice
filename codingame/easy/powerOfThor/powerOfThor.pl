#use strict;
use warnings;
#use diagnostics;
use 5.20.1;

select(STDOUT); $| = 1; # DO NOT REMOVE

my $tokens;
my $x;
my $y;

chomp($tokens=<STDIN>);
my ($light_x, $light_y, $initial_tx, $initial_ty) = split(/ /,$tokens);

while (1) {
    chomp(my $remaining_turns = <STDIN>); # The remaining amount of turns Thor can move. Do not remove this line.
    $y = "";
    $x = "";
    if ($initial_ty < $light_y) {
        $y = "S";
        $initial_ty++;
        print STDERR "$y, $initial_ty\n";
        }
    elsif ($initial_ty > $light_y) {
        $y = "N";
        $initial_ty--;
        }
    else {
        $y = "";
    }
    
    if ($initial_tx < $light_x) {
        $x = "E";
        $initial_tx--;
        }
    elsif ($initial_tx > $light_x) {
        $x = "W";
        $initial_tx++;
        }
    else {
        $x = "";
    }
    print STDERR "$x, $y\n";

    #$initial_ty = ($initial_ty < $light_y) ? $initial_ty++ : $initial_ty;
    #$$initial_ty = ($initial_ty > $light_y) ? $initial_ty-- : $initial_ty;
    #$initial_tx = ($initial_tx < $light_x) ? $initial_tx++ : $initial_tx;
    #print STDERR "$initial_tx - $light_x\n";
    #$initial_tx = ($initial_tx > $light_x) ? $initial_tx-- : $initial_tx;
    #print STDERR "$initial_tx\n";
    print "$y$x\n";
}