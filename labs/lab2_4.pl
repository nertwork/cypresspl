#!/usr/bin/perl
use strict;
use warnings;
print "Content-Type: text/html\n\n";
print "<!Doctype html>";
print "<html><body>";
my $x = 3.12;
my $age = 29;
my $firstName = "James";
my $Student_ID = "00976991";
my $bloodType = 'A';
my $score = "";
print $x, "\n<br>";
print $age, "\n<br>";
print $firstName, "\n<br>";
print $Student_ID, "\n<br>";
print $bloodType, "\n<br>";
my @x = (25, 30, 40, 45);
my @major = ("CIS", "MIS", "IST");
print $x[3], "\n<br>";
print $major[2], "\n<br>";
my %state = ("CA", "California", "WA", "Washington", "PA", "Pennsylvania");
print $state{CA}, "\n<br>";
my $str;
for (my $i=0; $i<=5; $i++)
{
$str .= $i;
}
print $str;
print "</body></html>";
