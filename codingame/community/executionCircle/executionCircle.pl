use strict; use warnings; use 5.20.1;
select(STDOUT); $| = 1; # DO NOT REMOVE

my $tokens;

chomp($tokens=<STDIN>);
my ($n, $s) = split(/ /,$tokens);
chomp(my $d = <STDIN>);

my $x = 2;
my $answer;

while ($x * 2 < $n) {
    $x = $x * 2;
}

if ($d eq "LEFT") {
    $answer = $s + (2 * ($n - $x));
} else {
    $answer = $s - (2 * ($n - $x));
}

if ($answer < 0) {
    $answer = $answer + $n;
}
if ($answer > $n) {
    $answer = $answer - $n;
}
print "$answer\n";
