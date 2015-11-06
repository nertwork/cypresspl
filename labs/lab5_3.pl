#!/usr/bin/perl
use CGI qw(:standard);
print header, start_html;
print "<form action='$ENV{'SCRIPT_NAME'}' method='post'>";
print "What year were you born? <input type='text' name='yr'>";
print "<input type='Submit' value='check'>";
print "</form>";
if (param("yr"))
{
	$str = undef;
	$y = param("yr") % 12;
	if ($y == 0) { $str = "Monkey"; }
	elsif ($y == 1) { $str = "Rooster"; }
	elsif ($y == 2) { $str = "Dog"; }
	elsif ($y == 3) { $str = "Pig"; }
	elsif ($y == 4) { $str = "Rat"; }
	elsif ($y == 5) { $str = "Ox"; }
	elsif ($y == 6) { $str = "Horse"; }
	elsif ($y == 7) { $str = "Rabbit"; }
	elsif ($y == 8) { $str = "Dragon"; }
	elsif ($y == 9) { $str = "Snake"; }
	elsif ($y == 10) { $str = "Horse"; }
	elsif ($y == 11) { $str = "Goat"; }
	else {}
	print "It is a $str year,";
}
print end_html;
