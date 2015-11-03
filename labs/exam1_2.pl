#!/usr/bin/perl
## File name: exam1_2.pl
## Student: James Farr
use CGI qw(:standard);
print header, start_html;
($school, $unit, $cost) = ("Cypress College", 3, 17.5);
$ammount = $unit * $cost;
print "$unit units at $school at \$$cost each is \$$ammount";
print end_html;
