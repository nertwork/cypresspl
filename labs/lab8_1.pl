#!/usr/bin/perl
use CGI qw(:standard);
print header, start_html;
sub findSum {
	$sum = 0;
	$size = @_;
	$i=0;
	while ($i < $size)
	{
		$sum += $_[$i];
		$i++; }
	$sum; }
print findSum(23, 17), "<br>";
print findSum(7, 5, 8, 3, 2), "<br>";
print findSum(11, 4, 17, 6, 25, 19), "<br>";
print hr;
sub Add {
	my($x, $y, $z)= @_;
	print "You entered $_[0], $_[1], and $_[2], so you get ";
	return $x + $y + $z;
}
print Add(3, 9, 5);
print hr;
sub Sum {
	my ($y, $s) = @_;
	for ($i=0; $i < $s; $i++)
	{
		print $y->[$i] . " ";
	}
}
@x = ( 8, 4, 5, 7, 3, 2, 1, 9); # create an array
$size = @x; # find the array size
Sum(\@x, $size); #pass an array and a scalar
print hr;
sub findMax {
	if ($_[0] > $_[1])
	{
		$_[0]; }
	else {
		$_[1]; }
}
print findMax(21, 39);
print end_html;
