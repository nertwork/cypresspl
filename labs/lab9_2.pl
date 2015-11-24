#!/usr/bin/perl
use CGI qw(:standard);
print header, start_html;
@x = (4, 7, 3, 5, 8, 9); # array
$p = \@x; # reference
print $p . "<br>";
$size = @x;
for ($i = 0; $i < $size; $i++)
{
	print $x[$i] . "<br>";
}
print hr;
@x = (4, 7, 3, 5, 8, 9); # array
$p = \@x; # reference
print $p . "<br>";
$size = @$p;
for ($i = 0; $i < $size; $i++)
{
	print $$p[$i] . "<br>";
}
print hr;
@x = ("apple", "orange", "banana"); # array
$p = \@x; # reference
print $p . "<br>";
foreach (@$p)
{
	print $_ . "<br>";
}
print hr;
@x = qw(apple orange banana);
print @x;
print "<br>";
$p = \@x;
print "\$p[0]: ", $$p[0], "<br>";
print "\$p[1]: ", $$p[1], "<br>";
print "\$p[2]: ", $$p[2], "<br>";
print hr;
@x = qw(apple orange banana);
print @x;   print "<br>";
$p = \@x;
print $p->[0], "<br>";
print $p->[1], "<br>";
print $p->[2], "<br>";
print end_html;
