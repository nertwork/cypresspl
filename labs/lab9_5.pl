#!/usr/bin/perl
use CGI qw(:standard);
print header, start_html;
sub mysub # subroutine
{
	print "This is a subroutine.";
};
$p1 = \&mysub; #variable
$x = "This is a variable.";
$p2 = \$x;
@y = ("apple", "orange", "grape"); #array
$p3 = \@y;
%z = (CA=>"California", PA=>"Pennsylvania"); #hash
$p4 =\%z;
print ref($p1) . "<br>" . ref($p2) . "<br>" . ref($p3) . "<br>" . ref($p4); print end_html;
