<?php
fscanf(STDIN, "%d %d",
    $n,
    $s
);
$d = stream_get_line(STDIN, 20 + 1, "\n");

$x = 2;
$answer;

while ($x*2 < $n) {
    $x = $x * 2;
}

if ($d == "LEFT") {
    $answer = $s + (2 * ($n - $x));
}else{
    $answer = $s - (2 * ($n - $x));
}

if ($answer < 0) {
    $answer = $answer + $n;
}
if ($answer > $n) {
    $answer = $answer - $n;
}
print $answer
?>
