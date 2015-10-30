#!/usr/bin/perl
print "Content-Type: text/html\n\n";
print "<!Doctype html>";
print "<html><body>";
$str = "apple" . "tree";
print $str . "\n<br>";
$str = 23 . "tree";
print $str . "\n<br>";
$str = 23 . 45;
print $str . "\n<br>";
$str1 = "apple";
$str2 = "tree";
print "An $str1 in a $str2 makes an " . $str1 . $str2 . "!\n<br>";
$str3 = "This is sentence 1.";
$str3 .= "This is sentence 2.";
$str3 .= "This is sentence 3.";
print $str3 . "\n<br>";
$result = sqrt(900);
print $result, "\n<br>";
$_=-2;
print "absolute value of -5 is: ", abs(-5), "\n<br>";
print "absolute value of $_: ", abs, "\n<br>";
print "exp($_):  ", exp, "\n<br>";
print "log(5):  ", log(5), "\n<br>";
print "sqrt(16): ", sqrt(16), "\n<br>";
($x, $y) = (60, 13);
print ($x & $y);
print "\n<br>";
print ($x | $y);
print "\n<br>";
print ($x ^ $y);
print "\n<br>";
print (~$x);
print "\n<br>"; # 4294967235
$x &= $y;
print $x, "\n<br>"; #12
$x = 60; # reset $x to 60
print ($X |= $y);
print "\n<br>";
print ($x ^= $y);
print "\n<br>";
$x = 60;
print ($x << 2);
print "\n<br>";
print ($x >> 2);
print "</body></html>";
