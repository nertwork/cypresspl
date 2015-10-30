#!/usr/bin/perl
print "Content-Type: text/html\n\n";
print "<!Doctype html>";
print "<html><body>";
$i = 7;
print $i + 3, "\n<br>";  # 10
print $i - 3, "\n<br>";  # 4
print $i * 3, "\n<br>";  # 21
print $i / 3, "\n<br>";  # 2.3333333333333
print $i % 3, "\n<br>";  # 1
print $i ** 3, "\n<br>"; # 343
$x = 5;
print -$x, "\n<br>";
print $x, "\n<br>";
$x = int(rand(100)); # assign a random number to $x
print "x is $x\n<br>";
$y = $x + 4;
print "y is now $y\n<br>";
$y = $y - 15;
print "y is now $y\n<br>";
$y = $y * 7;
print "y is now $y\n<br>";
$y = int($y / 3);  # eliminate the decimal value
print "y is now $y\n<br>";
$y = $y % 5;
print "y is now $y\n<br>";
($x, $y) = (5, 7);
print ($x <=> $y); # displays -1 because 5 < 7
print "\n<br>";
print ($y <=> $x); # displays 1 because 7 > 5
print "\n<br>";
($a, $b) = (4, 4);
print ($a <=> $b); # displays 0 because 4 = 4
($x, $y) = (2, 4);
print ($x < $y); #1
print "\n<br>";
print ($x <= $y); #1
print "\n<br>";
print ($y > $x); #1
print "\n<br>";
print ($y >= $x); #1
print "\n<br>";
print "</body></html>";
