#!/usr/bin/perl
print "Content-Type: text/html\n\n";
print "<!Doctype html>";
print "<html><body>";
$x=5;
print $x++; #6
print "\n<br>";
print $x += 2; #8
print "\n<br>";
$x = 1;
print ++$x; # 2 - prefix
print "\n<br>";
$x = 1;
print $x++; # 1 - postfix
print "\n<br>";
$i;  # no initial value but default to 0
print ++$i;  # add 1 to $i, so $i is 1
print $i--; # still 1 because post-decrement
print "\n<br>";
print ++($x = '99'), "\n<br>";  # prints '100'
print ++($x = 'a0'), "\n<br>";  # prints 'a1'
print ++($x = 'Az'), "\n<br>";  # prints 'Ba'
print ++($x = 'zz'), "\n<br>";  # prints 'aaa'
$i = 5;
print $i += 5;  # add 5 to the current value of $i
print "\n<br>";
$i = 5;
print $i -= 5;  # subtract 5 from the current value
print "\n<br>";
$x = 5;
print ($x += 10);
print "\n<br>", ($x -= 10);
print "\n<br>", ($x *= 10);
print "\n<br>", ($x /= 10);
print "\n<br>", ($x %= 10);
print "\n<br>", ($x **= 10);
print "\n<br>";
print "apple" x 3;
print "\n<br>";
print (("CIS", "MIS", "IST") x 3);
print "\n<br>";
print (38 x 3);
print "</body></html>";
