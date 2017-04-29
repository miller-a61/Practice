select(STDOUT); $| = 1; # DO NOT REMOVE
chomp(my $n = <STDIN>);
$n=$n > 1 ? 6*$n*($n-2)+8: 1;
print "$n\n";

