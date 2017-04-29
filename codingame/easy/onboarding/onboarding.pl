use strict;
use warnings;
#use diagnostics;
use 5.20.1;

select(STDOUT); $| = 1; # DO NOT REMOVE

# CodinGame planet is being attacked by slimy insectoid aliens.
# <---
# Hint:To protect the planet, you can implement the pseudo-code provided in the statement, below the player.


# game loop
while (1) {
    chomp(my $enemy_1 = <STDIN>); # name of enemy 1
    chomp(my $dist_1 = <STDIN>); # distance to enemy 1
    chomp(my $enemy_2 = <STDIN>); # name of enemy 2
    chomp(my $dist_2 = <STDIN>); # distance to enemy 2
    
    # Write an action using print
    # To debug: print STDERR "Debug messages...\n";

    # You have to output a correct ship name to shoot ("Buzz", enemy1, enemy2, ...)
    $_ = ($dist_1 lt $dist_2) ? $enemy_1 : $enemy_2;
    print "$_\n";
}