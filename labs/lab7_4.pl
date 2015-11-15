#!/usr/bin/perl
use CGI qw(:standard);
print header, start_html;
print "<table width='100%'><tr><td valign='top'>";
@campus1;
$campus1[0] = 'Pomona';
$campus1[1] = 'Perl';
$campus1[2] = 'Janet Chen';
@campus2;
$campus2[0] = 'Long Beach';
$campus2[1] = 'PHP';
$campus2[2] = 'Lauren Lee';
@campus3;
$campus3[0] = 'West Hills';
$campus3[1] = 'Python';
$campus3[2] = 'Helen Huang';
@course;
$course[0] = \@campus1;
$course[1] = \@campus2;
$course[2] = \@campus3;
$size = @course;
for ($i = 0; $i<$size; $i++)
{
	$s = @{$course[$i]}; # size of child array
	for ($j = 0; $j<$s; $j++)
	{
		print $course[$i][$j] . "<br>";
	}
}
print "</td><td valign='top'>";
@city1 = ('Houston', 'Austin', 'Dallas');
@city2 = ('Chicago', 'Peoria', 'Springfield');
@city3 = ('Seattle', 'Tocoma', 'Lakewood');
# array that contains arrays as elements
@market = (\@city1, \@city2, \@city3);
$size = @market;
for ($i = 0; $i<$size; $i++)
{
	$s = @{$market[$i]}; # size of child array
	for ($j = 0; $j<$s; $j++)
	{
		print $market[$i]->[$j] . "<br>";
		205
	} }
print "</td><td>";
@brand = (['Car', 'Toyota', 'Nissan', 'Honda'],
	['Smart Phone', 'HTC', 'Samsung', 'Motorola', 'Nokia'],
	['TV', 'Sony', 'Toshiba']);
$size = @brand;
for ($i = 0; $i<$size; $i++)
{
	$s = @{$brand[$i]}; # size of child array
	for ($j = 0; $j<$s; $j++)
	{
		print $brand[$i]->[$j] . "<br>";
	}
}
print "</td></tr></table>";
print end_html;
