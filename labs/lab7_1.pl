#!/usr/bin/perl
use CGI qw(:standard);
print header, start_html;
# list
foreach $c (A .. Z)
{
	print lc($c), " ";
}
foreach (0..9)
{
	print $_, " ";
}
print hr;
# array
@a; # declare
$a[0] = "Apple"; # populate
$a[1] = 6.1;
$a[2] = 'k';
$a[3] = 2;
$size = @a; # get the total number of elements
for ($i = 0; $i < $size; $i++)
{
	print $a[$i], "<br>";
}
@season = ("Spring", "Summer", "Fall", "Winter");
$size = @season;
$i = 0;
while ($i < $size)
{
	print $season[$i], "<br>";
	$i++; }
@x = (4, 7, 5, 8, 2, 0, 1, 9, 3, 6);
foreach (@x)
{
	print $_, " ";
}
print hr;
# hash
%area = ("714", "Anahiem", "949", "Irvin", "818", "Torrance");
print $area{"818"}, "<br>";
print $area{949}, "<br>";
print $area{'714'}, "<br>";
%state = ("CA", "California", "PA", "Pennsylvania", "WA", "Washington");
print $state{"PA"}, "<br>";
print $state{"WA"}, "<br>";
print $state{"CA"}, "<br>";
%score = ("Beth"=>94, "John"=>95, "Kathy"=>89, "Peter"=>88);
@k = keys %score;
$size = @k; # get size of k array
for ($i = 0; $i < $size; $i++)
{
	print $score{$k[$i]}, "<br>";
}
print end_html;
