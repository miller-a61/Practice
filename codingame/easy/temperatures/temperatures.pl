use strict;
use warnings;
use 5.20.1;

select(STDOUT); $| = 1; # DO NOT REMOVE

chomp(my $n = <STDIN>); # the number of temperatures to analyse
chomp(my $temps = <STDIN>); # the n temperatures expressed as integers ranging from -273 to 5526
my @temps = split(' ',$temps);
#print "$temps\n";

my $closest = 100000;
my $size = @temps;
#print "$size\n";

if ($size == 0){
    print "0\n";
}
else{
    for(my $i = 0; $i < $size; $i++) {
        my $tst = $temps[$i];
        my $abs = abs($closest);
        #print "$i, $tst, $closest,$abs\n";

        if ((abs($closest) == abs($tst) && $closest < 0) || (abs($closest) > abs($tst))  ){
            $closest = $temps[$i];
            #print "$i, $tst, $closest\n";
            #print "-------------------------\n";        
        }
        #print "$closest\n";
    }
    print "$closest\n";
}

