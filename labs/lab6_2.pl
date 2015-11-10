#!/usr/bin/perl
use CGI qw(:standard);
print header, start_html;
print "<style>";
print "span {border: 1px solid black; display: inline-block; width: 20px; height:
20px; text-align:center}";
print "</style>";
print "<p>for loop:<br>";
#for
for ($i=1; $i <= 36; $i++)
{
	if ($i%6 == 0) # if $i is multiple of 6
	{
		print "<span>$i</span>", br;  # br – line breaker
	}
	else {
		print "<span>$i</span>";
	}
}
print "</p><p>foreach:<br>";
#foreach
foreach $i (1 .. 36)
{
	if ($i%6 == 0) # if $i is multiple of 6
	{
		print "<span>$i</span>", br;  # br – line breaker
	}
	else {
		print "<span>$i</span>";
	}
}
print "</p>";
print end_html;
