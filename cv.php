<?php

use divengine\div;

include "div.php";

div::setGlobal("serial", strtoupper(uniqid()));

echo new div("rafageist.tpl", "rafageist.json");
