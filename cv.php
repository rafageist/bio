<?php

use divengine\div;

include "div.php";

$serial = strtoupper(uniqid());

$ip = false;

if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
    $ip = $_SERVER['HTTP_CLIENT_IP'];
} elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
    $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
} else {
    $ip = $_SERVER['REMOTE_ADDR'];
}

div::setGlobal("serial", $serial);
div::setGlobal("ip", $ip);

$tpl = (new div("rafageist.tpl", "rafageist.json"))."";


file_put_contents("/var/www/cv/$serial-".date('Ymdhis').".html", $tpl);

echo $tpl;
