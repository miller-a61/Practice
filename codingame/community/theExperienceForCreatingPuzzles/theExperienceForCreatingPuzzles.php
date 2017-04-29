<?php
fscanf(STDIN, "%d",
    $lvl
);
fscanf(STDIN, "%d",
    $needed
);
fscanf(STDIN, "%d",
    $xp
);
$xp = $xp * 300;

while ($xp >= $needed) {
    $lvl = $lvl + 1;
    $xp = $xp - $needed;
    $needed = floor(($lvl * sqrt($lvl) * 10));
}
echo("$lvl\n");

print $needed - $xp;
?>