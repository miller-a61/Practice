use strict; use warnings; use 5.20.1;
select(STDOUT); $| = 1; # DO NOT REMOVE

chomp(my $n = <STDIN>);
my $x = 86400;
my $answer;
my $u;

for my $i (0..$n-1) {
    chomp(my $t = <STDIN>);

    $u = substr($t ,0 , 2) * 3600 + substr($t, 3,2) * 60 + substr($t, 6,2);
    
    if ($u < $x) {
        $answer = $t;
        $x = $u;
    }
    
}

print "$answer\n";

