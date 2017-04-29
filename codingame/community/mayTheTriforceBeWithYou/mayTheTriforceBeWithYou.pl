use strict; use warnings; use 5.20.1;
select(STDOUT); $| = 1; # DO NOT REMOVE

chomp(my $n = <STDIN>);
my $numspaces;
my $numspaces2;
my $numstars;
my $spaces;
my $spaces2;
my $stars;

for my $i (0..$n-1) {
   
    $numspaces = (2 * $n) - $i - 1;
    $spaces = ' ' x $numspaces ;
    
    $numstars =  2 * $i + 1;

    $stars = ('*' x $numstars );
    
    if ($i == 0) {
        $spaces = (' ' x ($numspaces - 1) );
        print ".";
    }
    
    print "$spaces$stars\n";
    
}


for my $i (0..$n - 1) {
   
    $numspaces = $n - $i - 1;
    $numspaces2 = (2 * $n) - (2 * $i) - 1;

    $spaces = ' ' x $numspaces;
    $spaces2 = ' ' x $numspaces2;
    
    $numstars =  2 * $i + 1;
    $stars = ('*' x $numstars );

    print "$spaces$stars$spaces2$stars\n";
    
}