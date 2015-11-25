#!/usr/bin/perl
use CGI qw(:standard);
print header, start_html;
if (!param) 
{
	print "<form action='$ENV{SCRIPT_NAME}' method=post>\n";
	print "What is your favorite subject?\n";
	print "<input type=text name=subject>\n";
	print "<input type=submit value=Submit>\n",br;
	print "</form>";
}
else
{
	$subject=param('subject');
	print "You entered: $subject\n",hr;
	head();
	$subject=lc($subject);
	if ($subject eq "chemistry")
	{
		open CHEM, "chem.dat";
		@lines = <CHEM>;
		close(CHEM);
		foreach (@lines)
		{
			print uc($_),br;
		}
	}
	elsif ($subject eq "biology")
	{
		open BIOL, "biol.dat";
		@lines = <BIOL>;
		close(BIOL);
		foreach (@lines)
		{
			print uc($_),br;
		}
	}
	else
	{
		print "Not available this term!";
	}
}
foot();
sub head
{
	print "<pre>";
}
sub foot
{
	print "</pre>";
}
print end_html;
