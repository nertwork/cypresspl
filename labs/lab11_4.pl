#!/usr/bin/perl
use CGI qw(:standard);
print header, start_html;
$file = $ENV{SCRIPT_NAME};
$file =~ s/\/myperl\///;  ### remove /mperl/ from the path
if (-e "$file.txt") #### check if the file exists ####
{
	open (HIT, "<$file.txt");
	$i = <HIT>;
	print "This page has been visit $i times!";
	$i += 1;
	close (HIT);
	open (HIT, ">$file.txt");
	print HIT $i;
	close (HIT);
}
else {
	open (HIT, ">$file.txt");
	$i = 2;
	print HIT $i;
	close (HIT);
	print "It is your first visit to this page!";
}
print end_html;
