#!/usr/bin/perl
### File name: ex10.pl
### Student: James Farr
use strict;
use CGI qw(:standard);
print header, start_html;
if (!param('sentence'))
{ 
	print "<form action='$ENV{'SCRIPT_NAME'}' method='post'>\n";
	print "Enter a sentence: <input type='text' name='sentence'>\n";
	print "<input type='Submit'>";
	print "</form>";
} else {
	my $sentence = param('sentence');
	print $sentence =~ tr/a-z/A-Z/;
}

print end_html;
