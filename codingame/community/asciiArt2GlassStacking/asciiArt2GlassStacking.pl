use strict; use warnings; use 5.20.1;
select(STDOUT); $| = 1; # DO NOT REMOVE

chomp(my $n = <STDIN>);

my $sum = 0;
my $rows = 0;
my $numoffset;
my $numoffset2;
my $offset;
my $offseta;
my $glass;
my $answer;

for my $i (1..$n) {
    $sum = $sum + $i;
    if ($sum <= $n) {
        $rows = $i;
    }
}

for my $j (1..$rows) {
    $numoffset  = ($rows - $j) * 3;  
    
    $offset = ' ' x $numoffset; 


    $glass = '  *** ' x $j;
    $answer = $offset . $glass . $offset;
    $answer = substr($answer, 1);
    print "$answer\n";
    
    $glass = '  * * ' x $j;
    $answer = $offset . $glass . $offset;
    $answer = substr($answer, 1);    
    print "$answer\n";
    print "$answer\n";
    
    $glass = ' *****' x $j;
    $answer = $offset . $glass . $offset;
    $answer = substr($answer, 1);
    print "$answer\n";

}

