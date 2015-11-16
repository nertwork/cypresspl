#!/usr/bin/perl
use CGI qw(:standard);
print header, start_html;
if (!param) {
	print "<form action='$ENV{SCRIPT_NAME}' method=get>\n",br;
	print "Value: <input text='text' name='degree'>\n",br;
	print "<input type='submit' name='s1' value='To Celsius'>\n";
	print "<input type='submit' name='s2' value='To Fahrenheit'>\n",br;
	print "</form>",br;
}
else {
	if (param('s1'))
	{
		F2C(param('degree'));
	}
	if (param('s2'))
	{
		C2F(param('degree'));
	}
}
sub F2C {
	$result = ($_[0] - 32) * (5/9);
	print "$_[0] F = $result C", "<br>";
	again();
}
sub C2F {
	$result = $_[0] * (9/5) + 32;
	print "$_[0] C = $result F", br;
	again(); }
sub again {
	print "<a href='$ENV{SCRIPT_NAME}'><button>Again</button></a>";
}
print end_html;
