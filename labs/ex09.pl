#!/usr/bin/perl
## File name: ex09.pl
## Student: James Farr
use CGI qw(:standard);
print header, start_html;
print "<form action='$ENV{SCRIPT_NAME}' method='post'>";
print "Enter an integer: <input type='text' name='n'>";
print "<input type='submit' value='Submit'>";
print "</form>";
if (param) {
	$n = param('n');
	$p = sub {
		$sum = 0;
		for ($i=0; $i <= $_[0]; $i++)
		{
			$x = $i * $i;
			$sum += $x; }
		return $sum;
	};
	print $p->($n);
}
print end_html;

