#!/usr/bin/perl
use strict;
use CGI qw(:standard);
print header, start_html;
if (!param("blood"))
{ 
	print "<form action='$ENV{'SCRIPT_NAME'}' method='post'>\n";
	print "What is your blood type? </br> \n<input type='text' name='blood'>\n";
	print "<input type='Submit'>";
	print "</form>";
} else {
	my $blood_type = lc(param("blood"));
	my %blood_types = (
		a => "Stay away from Ameoba.",
		b => "Do not touch any bacteria.",
		o => "You need more organic fruits",
		ab => "Try eating more vitamin 'A' and 'B'.",
	);
	if ($blood_types{$blood_type}) { print $blood_types{$blood_type}; }
	else { print "Are you human?"; }
}

print end_html;
