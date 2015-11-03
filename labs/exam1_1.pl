#!/usr/bin/perl
## File name: exam1_1.pl
## Student: James Farr
use CGI qw(:standard);
print header, start_html;
print start_form(-action=>$ENV{SCRIPT_NAME}, -method=>'post');
print "<p>How much do you weigh?: <INPUT type='text' NAME='weight' SIZE=4></p>";
print p, submit(-name =>'Send');
print end_form;
if (param('weight')) {
	$weight = param('weight') * 0.453592;
	print "You weigh ", $weight, "kg!<br>";
} else { }
print end_html;

