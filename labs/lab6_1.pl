#!/usr/bin/perl
use CGI qw(:standard);
print header, start_html;
if (param) {
	$n1 = param("n1");
	for ($i=1; $i<=$n1; $i+=5)
	{
		print "<hr width='100%' color='red' size=$i>"
	}
	for ($i=$n1; $i>=1; $i-=5)
	{
		print "<hr width='100%' color='blue' size=$i>"
	}
}
else {
	print "<form action='$ENV{SCRIPT_NAME}' method='post'>";
	print "Enter a positive number: <input type='text' name='n1' size=5>";
	print "<input type='submit' value='Go'>";
	print "</form>";
}
print end_html;
