#!/usr/bin/perl
use CGI qw(:standard);
print header, start_html;
print "<form action='$ENV{SCRIPT_NAME}' method=post>\n";
print "Enter a long paragraph:\n",br;
print "<input name=str size='150' />",br;
print "<input type=submit value=Submit></form>";
unless (!param)
{
	$str=lc(param('str'));
	$str=~ tr/.,"'/ /; # remove some punctuations
	@list=split(/ /,$str); # remove blank space
	my @sort_list = sort @list; # sort the array
	print "Sorted word list:<ul>\n";
	foreach (@sort_list)
	{
		print "<li>$_\n";
	}
	print "</ul>";
}
print end_html;
