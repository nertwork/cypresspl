#!/usr/bin/perl
use CGI qw(:standard);
print header, start_html;
print "<form action='$ENV{SCRIPT_NAME}' method=post>\n";
print "Enter your blood type: ";
print "<input type=text name=blood size=5>\n";
print "<input type=submit value=Submit></form>\n";
my ($blood, $size, @items);
$blood = param('blood');
unless (!param)
{
	print "You entered: ", b($blood), br;
	if ($blood =~ m/AB/)
	{
		print "Matches AB type!\n",br;
	}
	elsif ($blood =~ m/B/)
	{
		print "Matches B type!\n",br;
	}
	elsif ($blood =~ m/O/)
	{
		print "Matches O type!\n",br;
	}
	elsif ($blood =~ m/A/)
	{
		print "Matches A type!\n",br;
	}
	else
	{
		print "No match! Because:<ol>\n";
		lowcase();
	}
	sub lowcase
	{
		if ($blood =~ m/ab/)
		{
			@items = ($blood =~ m/[a-b]/ig);
			$size = 0;
			$size = @items;
			print "<li>Warning - $size letters!\n";
			print "<li>Error - case insensitive. Use upper case!\n";
		}
		elsif ($blood =~ m/a/i || $blood =~ m/b/i || $blood =~ m/o/i)
		{
			print "<li>Error - case insensitive. Use upper case!\n";
		}
		else
		{
			print "Error - unknown blood type.\n";
		}
		print "</ol>";
	}
}
print end_html;
