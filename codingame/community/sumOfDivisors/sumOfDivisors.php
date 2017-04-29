<?php

fscanf(STDIN, "%d",
    $x
);

(int)$y = $x/2;
(int)$sum = $y;

for ($i = 1; $i <= $y; $i++) {
    $sum += (int)($y/$i)*(1+(int)($x/$i));
    if ((int)($x/$i)%2==1 )
        $sum += 1+(int)($y/$i);
    }
print $sum

?>
