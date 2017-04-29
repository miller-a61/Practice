use strict;
use warnings;
#use diagnostics;
use 5.20.1;

select(STDOUT); $| = 1; # DO NOT REMOVE

# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

chomp(my $x = <STDIN>);

my $y = $x/2;
my $_ = $y;

for (my $i = 1; $i <= $y; $i++) {
    $_ += int(int($y)/$i) * (1+int($x/$i));
    if (int($x/$i)%2 == 1) {
        $_ += 1+ int($y/$i);
    }
}

print "$_\n";

