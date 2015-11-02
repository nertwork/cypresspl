#!/usr/bin/perl
## File name: ex04.pl
## Student: James Farr
use strict;
use CGI qw(:standard);
print header, start_html;
if (param('status')) {
	print "You selected ", param('status'), "!<br>";
} else {
print start_form(-action=>$ENV{SCRIPT_NAME}, -method=>'post');
print"<p>What is your status? ";
print radio_group(
       -name=>'status',
       -values=>[qw(freshman sophomore junior senior)],
       -default=>'freshman');
print p, submit(-name =>'Send');
print end_form;
}
print end_html; 
