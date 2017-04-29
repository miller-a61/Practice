<?php
fscanf(STDIN, "%d", $N);
if ($N > 1)
    $N = $N * 6 * ($N - 2) + 8;
print $N;
?>