<?php

use divengine\div;

include "div.php";

div::setGlobalVar("serial", strtoupper(uniqid()));

echo new div("rafageist.tpl", "rafageist.json");
