#!/usr/bin/perl
print "Content-Type: text/html\n\n";
print "<!Doctype html>";
print "<html><body>";
print "File name: ". __FILE__ . "\n<br>";
print "Line Number: " . __LINE__ ."\n<br>";
print "Package: " . __PACKAGE__ ."\n<br>";
#array
@x = (25, 30, 40, 45);
@major = ("CIS", "MIS", "IST");
print $x[2], "\n<br>";
print $major[0], "\n<br>";
#hash
%state = ("CA", "California", "WA", "Washington", "PA", "Pennsylvania");
print $state{PA}, "\n<br>";
=Multiline comment
This is the first line.
This is the second line.
This is the third line.
=cut
#single vs. double quotes
$str = "apple";
print '$str', "\n<br>";
print "$str", "\n<br>";
$name1="Jennifer Lopez";
$name2="Lea Thompson";
print "$name1", "\n<br>";
print '$name2', "\n<br>";
print "\Uthis line must be converted to uppercase.", "\n<br>";
print "\LTHIS LINE MUST BE CONVERTED TO LOWERCASE.", "\n<br>";
print "</body></html>";
