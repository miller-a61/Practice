<?php
fscanf(STDIN, "%d",
    $rnds
);
fscanf(STDIN, "%d",
    $cash
);
#echo("$rnds\n");
#echo("$cash\n");

for ($i = 0; $i < $rnds; $i++)
{
    $play = stream_get_line(STDIN, 1024 + 1, "\n");
    $plays = explode(" ", $play);
    
    $bet = ceil($cash/4);
#    echo("bet: $bet\n");
    $cash = $cash - $bet;
#    echo("cash: $cash\n");
    $ball = intval($plays[0]);
    $call = $plays[1];
    
    if ($call == "PLAIN") {
        $target = intval($plays[2]);
    }
#    echo("$call : $ball - $target\n");
    if ($call == "PLAIN" && $ball == $target) {
        $cash = $cash + ($bet * 36);
    }elseif ($call == "EVEN" && $ball > 0 && $ball % 2 == 0) {
        $cash = $cash + ($bet * 2);
    }elseif ($call == "ODD" && $ball % 2 == 1) {
        $cash = $cash + ($bet * 2);
    }
#    echo("new cash: $cash\n");
#    echo("-----------\n");
}

echo("$cash\n");
?>