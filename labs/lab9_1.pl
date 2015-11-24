#!/usr/bin/perl
use CGI qw(:standard);
print header, start_html;
$x = 15; # variable
$p = \$x; # reference
print $x . "<br>" . $p;
print hr;
$name = "Jennifer Lopez"; # variable
$p = \$name; # reference
print $name . "<br>" . $p;
print hr;
$x = 15; # variable
$p = \$x; # reference
print $x . "<br>" . $$p; #deference
print hr;
$name = "Jennifer Lopez"; # variable
$p = \$name; # reference
print $name . "<br>" . $$p;
print hr;
$x = "apple";
$p = \$x;
print ${$p};
print end_html;
