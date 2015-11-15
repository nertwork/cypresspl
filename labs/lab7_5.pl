#!/usr/bin/perl
use CGI qw(:standard);
print header, start_html;
# 3rd layer
@cis245 = ("CIS245", "Perl Programming", "3");
@cis246 = ("CIS246", "PHP Programming", "3");
@cis247 = ("CIS247", "Python Programming", "3");
@tcm102 = ("TCM102", "Intro to Linux", "3");
@tcm103 = ("TCM103", "Linux Administration", "3");
@tcm104 = ("TCM104", "Linux Scripting", "3");
# 2nd layer
@cis = (\@cis245, \@cis246, \@cis247);
@tcm = (\@tcm102, \@tcm103, \@tcm104);
# 1st layer - parent
@course = (\@cis, \@tcm);
print "<table width='100%' border='1'><tr><td valign='top'>";
$size = @course;
for (my $i=0; $i < $size; $i++)
{
	$s1 = @{$course[$i]};
	for (my $j=0; $j < $s1; $j++)
	{
		$s2 = @{$course[$i]->[$j]};
		for (my $k=0; $k < $s2; $k++)
		{
			print $course[$i]->[$j]->[$k], " ";
		}
		print "\n<br>";
	}
}
print "</td><td valign='top'>";
@food = (
	[
		["apple", "orange", "banana"]
	], [
		["brocolli", "spinach", "cabbage", "carrot", "onion"]
	],
	[
		["shrimp", "crab"]
	] );
$size = @food;
for (my $i=0; $i < $size; $i++)
{
	$s1 = @{$food[$i]};
	for (my $j=0; $j < $s1; $j++)
	{
		$s2 = @{$food[$i]->[$j]};
		for (my $k=0; $k < $s2; $k++)
		{
			print $food[$i]->[$j]->[$k], " ";
		}
		print "\n<br>";
	}
}
print "</td><td valign='top'>";
@cars = ( [
		["Toyota", "Japan"],
		["Nissan", "Japan"],
	],
	[
		["BMW", "Germany"],
		["Audi", "Germany"],
	] );
print $cars[0]->[0]->[0], "\n<br>";
print $cars[0]->[0]->[1], "\n<br>";
print $cars[0]->[1]->[0], "\n<br>";
print $cars[0]->[1]->[1], "\n<br>";
print $cars[1]->[0]->[0], "\n<br>";
print $cars[1]->[0]->[1], "\n<br>";
print $cars[1]->[1]->[0], "\n<br>";
print $cars[1]->[1]->[1], "\n<br>";
print "</td></tr></table>";
print end_html;
