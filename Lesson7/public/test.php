<?php
function add($x, $y)
{
    return $x + $y;
}

if (add(1, 2) == 3) echo "test passed;";
if (add(2, 2) == 4) echo "test passed;";
    else
        echo "test filed";
