<?php
// Simple Interest Calculator in PHP of PTR/100

$p = 5;
$t = 7;
$r = 9;
$SI = NULL;

// p = principal
// t = time
// r = rate
// SI = simple interest

// Calculate simple interest
$SI = ($p * $t * $r) / 100;

// Output
echo "Simple Interest = " . $SI;

?>


Run Program