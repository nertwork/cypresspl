#!/usr/bin/perl
print "Content-Type: text/html\n\n";
#######################################
# Student Name: James Farr
#######################################
print "<!Doctype html>";
print "<html><body>";
print "<h1>This is heading 1.</h1>", # comma
 "<h2>This is heading 2.</h2>",
 "<h3>This is heading 3.</h3>",
 "<h4>This is heading 4.</h4>",
 "<h5>This is heading 5.</h5>",
 "<h6>This is heading 6.</h6>";

print length(""), "\n<br>";
print length(" "), "\n<br>";
print length(''), "\n<br>";
print length(' '), "\n<br>";
print 627, "\n<br>";
print 345.29, "\n<br>";
print .23E-10, "\n<br>";
print 0xff, "\n<br>";
print 0377, "\n<br>";
print 0b011011, "\n<br>";
$x = 3.12;
$age = 29;
$firstName = "James";
$Student_ID = "00976991";
$bloodType = 'A';
$score = "";
print $x, "\n<br>";
print $age, "\n<br>";
print $firstName, "\n<br>";
print $Student_ID, "\n<br>";
print $bloodType, "\n<br>";

print "</body></html>";
