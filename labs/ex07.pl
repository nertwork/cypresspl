#!/usr/bin/perl
## File name: ex07.pl
## Student: James Farr
use CGI qw(:standard);
print header, start_html;
my @regions = qw(northwest southwest northeast southeast mountains);
my $size = @regions;
for (my $i=0; $i < $size; $i++)
{ 
	print "regions[$i] is ", $regions[$i], "<br/>\n"
}
print end_html;
