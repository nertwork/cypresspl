#!/usr/bin/perl
use CGI qw(:standard);
print header, start_html;
my ($t, $y);
@t=localtime();
$y=$t[5]+1900;
print "Today is ";
if ($t[4]==0) { print("January"); }
elsif ($t[4]==1) { print("February"); }
elsif ($t[4]==2) { print("March"); }
elsif ($t[4]==3) { print("April"); }
elsif ($t[4]==4) { print("May"); }
elsif ($t[4]==5) { print("June"); }
elsif ($t[4]==6) { print("July"); }
elsif ($t[4]==7) { print("August"); }
elsif ($t[4]==8) { print("September"); }
elsif ($t[4]==9) { print("October"); }
elsif ($t[4]==10) { print("November"); }
else { print("December"); }
print " " . $t[3] . ", " . $y . " and is ";
if ($t[6]==1) { print("Monday!"); }
elsif ($t[6]==2) { print("Tuesday!"); }
elsif ($t[6]==3) { print("Wednesday!"); }
elsif ($t[6]==4) { print("Thursday!"); }
elsif ($t[6]==5) { print("Friday!"); }
elsif ($t[6]==6) { print("Saturday!"); }
else { print("Sunday!"); }
print end_html;

