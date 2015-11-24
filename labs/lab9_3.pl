#!/usr/bin/perl
use CGI qw(:standard);
print header, start_html;
@x = (4, 7, 3, 5, 8, 9); # array
$p = \@x; # reference
print @{$p}, "<br>";
@x = ("apple", "orange", "banana"); # array
$p = \@x; # reference
print @{$p}, "<br>";
print hr;
@x = ( [1, 2, 3, 4],
	["one", "two", "three", "four"],
	['ichi', 'nii', 'san', 'shi'],
);
$s = @x;
for ($i = 0; $i < $s; $i++)
{
	$s1 = @{$x[$i]};
	for ($j = 0; $j < $s1; $j++)
	{
		print $x[$i][$j] . "<br>";
	}
}
print hr;
@x = ( [1, 2, 3, 4],
	["one", "two", "three", "four"],
	['ichi', 'nii', 'san', 'shi'],
);
$p = \@x;
$s = @$p;
for ($i = 0; $i < $s; $i++)
{
	$s1 = @{$$p[$i]};
	for ($j = 0; $j < $s1; $j++)
	{
		print $$p[$i][$j] . "<br>";
	}
}
print end_html;
