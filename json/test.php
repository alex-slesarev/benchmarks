<?php

function notify($msg) {
    $socket = @fsockopen('localhost', 9001);
    if ($socket) {
        fputs($socket, $msg);
        fclose($socket);
    }
}

$pid = posix_getpid();
notify("PHP\t$pid");

$jobj = json_decode(file_get_contents("./1.json"), true);

$coordinates = $jobj['coordinates'];
$len = count($coordinates);
$x = 0;
$y = 0;
$z = 0;

for ($i = 0; $i < $len; $i++) {
    $coord = $coordinates[$i];
    $x += $coord['x'];
    $y += $coord['y'];
    $z += $coord['z'];
}

printf("%.8f\n", $x / $len);
printf("%.8f\n", $y / $len);
printf("%.8f\n", $z / $len);

notify("stop");
