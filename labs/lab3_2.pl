#!/usr/bin/perl
print "Content-Type: text/html\n\n";
print "<!Doctype html>";
print "<html><body>";
($x, $y, $z, $w, $t, $u) = (2, 5, 4, 7, 13, 15); # create multiple variables
print $y+=3, "\n<br>";
print $z-=4, "\n<br>";
print $w*=2, "\n<br>";
print $s/=3, "\n<br>";
print $t%=7, "\n<br>";
print $u**=4, "\n<br>";
print (("apple" eq "Apple") ? "true" : "false"); # false
print "\n<br>";
print (("14" eq "19") ? "true" : "false"); # false
print "\n<br>";
print (("apple" ne "Apple") ? "true" : "false"); # true
print "\n<br>";
print (("14" ne "19") ? "true" : "false"); # true
print "\n<br>";
print (("a" gt "A") ? "true" : "false"); # true
print "\n<br>";
print (("a" gt "0") ? "true" : "false"); # true
print "\n<br>";
print (("A" gt "0") ? "true" : "false"); # true
print "\n<br>";
print (("apple" gt "Apple") ? "true" : "false"); # true
print "\n<br>";
$x = "apple";
$y = "orange";
print (($x lt $y) ? "true" : "false"); # true
print "\n<br>";
print (($x gt $y) ? "true" : "false"); # false
print "\n<br>";
print (($x le $y) ? "true" : "false"); # true
print "\n<br>";
print (($x ge $y) ? "true" : "false"); # false
print "\n<br>";
($x, $y) = ("apple", "apple");
print ($x cmp $y); # 0
print "\n<br>";
print ("apple" cmp "Apple"); # 1
print "\n<br>";
print ("Apple" cmp "apple"); # -1
print "\n<br>";
print "</body></html>";
