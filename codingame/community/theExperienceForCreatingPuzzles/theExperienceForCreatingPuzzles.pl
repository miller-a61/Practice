use strict;
use warnings;
#use diagnostics;
use 5.20.1;

select(STDOUT); $| = 1; # DO NOT REMOVE

# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

chomp(my $level = <STDIN>);
chomp(my $xp = <STDIN>);
chomp(my $n = <STDIN>);
#print "$level, $xp $n\n";

$n *= 300;
#print "new n: $n\n";
while ($n >= $xp) {
    $level += 1;
#    print "new level $level\n";
    $n = $n - $xp;
#    print "new n : $n\n";
    $xp = int($level * sqrt($level) * 10);
#    print "new xp: $xp\n";
}
my $nextlvl = $xp - $n;
print "$level\n";
print "$nextlvl\n";



