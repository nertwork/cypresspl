#!/usr/bin/perl
## File name: ex06.pl
## Student: James Farr
use CGI qw(:standard);
print header, start_html;
my $i = 1;
while ($i <= 10 )
{
	print "<button>$i</button>";
	$i++;
}
print end_html;
