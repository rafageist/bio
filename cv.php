<?php

use divengine\div;

include "div.php";

$serial = strtoupper(uniqid());

div::setGlobal("serial", $serial);

echo new div("rafageist.tpl", "rafageist.json");
