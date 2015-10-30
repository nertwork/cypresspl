#!/usr/bin/perl
print "Content-Type: text/html\n\n";
print "<!Doctype html>";
print "<html><body>";
print (((5>4) && (5>3)) ? "true" : "false"); # true
print "\n<br>";
print (((5>4) && (5<3)) ? "true" : "false"); # false
print "\n<br>";
print (((5<3) && (5>4)) ? "true" : "false"); # false
print "\n<br>";
print (((5<3) && (5<4)) ? "true" : "false"); # false
print "\n<br>";
print (((5>4) || (5>3)) ? "true" : "false"); # true
print "\n<br>";
print (((5>4) || (5<3)) ? "true" : "false"); # true
print "\n<br>";
print (((5<3) || (5>4)) ? "true" : "false"); # true
print "\n<br>";
print (((5<3) || (5<4)) ? "true" : "false"); # false
print "\n<br>";
print (!(5<4) ? "true" : "false"); # true
print "\n<br>";
print (!(5>3) ? "true" : "false"); # false
print "\n<br>";
print ((($x > 4) and ($y > 4)) ? "true" : "false");
print "\n<br>";
print ((($x < 6) or ($y < 6)) ? "true" : "false");
print "\n<br>";
print (not ($x < 4) ? "true" : "false");
print "\n<br>";
print (((3<5) xor (4<5)) ? "true" : "false"); # false
print "\n<br>";
print (((3>5) xor (4<5)) ? "true" : "false"); # false
print "\n<br>";
print (((3<5) xor (4>5)) ? "true" : "false"); # false
print "\n<br>";
print (((3>5) xor (4>5)) ? "true" : "false"); # false
print "\n<br>";
print "</body></html>";
