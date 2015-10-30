#!/usr/bin/perl
print "Content-Type: text/html\n\n";
print "<!Doctype html>";
print "<html><body>";
#variables
$animal = "camel";
$answer = 42;
$weight = 183.57;
print "There are $answer $animal.\n<br>The square of $weight is ", $weight *
$weight, ".\n<br>";
#constant
use constant PI => 3.14195;
$r = 15;
print "Circumference is ", 2 * PI * $r, ".\n<br>";
#constants
use constant true => 1;
use constant false => 0;
if (3>5) { print true, "\n<br>"; }
else { print false, "\n<br>"; }
use constant
{
"Speed_of_light" => 2.99792458e8,
"Plank_constant" => 6.6260755e-34,
"Avogadro_constant" => 6.0221e23,
"Faraday_constant" => 96485.309,
"Coulomb_constant" => 8.987552e9
};
print Speed_of_light, "\n<br>";
print Plank_constant, "\n<br>";
print Avogadro_constant, "\n<br>";
print Faraday_constant, "\n<br>";
print Coulomb_constant, "\n<br>";

print "</body></html>";
