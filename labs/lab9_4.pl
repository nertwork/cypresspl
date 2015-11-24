#!/usr/bin/perl
use CGI qw(:standard);
print header, start_html;
#hash
%month = ( "01", "Jan", "02", "Feb", "03", "Mar", "04", "Apr",
	"05", "May", "06", "Jun", "07", "Jul", "08", "Aug",
	"09", "Sep", "10", "Oct", "11", "Nov", "12", "Dec");
$p = \%month; # reference
print $p . "<br>";
foreach (keys %$p)
{
	print $_ . " : " . $$p{$_} . "<br>";

}
print hr;
%x = ("CA", "California",
	"PA", "Pennsylvania",
	"WA", "Washington"); #hash
$p = \%x; # reference
print %{$p}, "<br>";
%x = (TX=>"Texas", MI=>"Michigan", OH=>"Ohio"); # hash
$p = \%x; # reference
print %{$p}, "<br>";
print hr;
sub findMax {
	if ($_[0] >= $_[1])
	{
		return $_[0];
	}
	else {
		return $_[i];
	}
};
$p = \&findMax;
print &$p(9, 3) . "<br>" . $p->(6, 4);
print hr;
sub add_number
{
	$sum = 0;
	foreach (@_)
	{
		$sum += $_; }
	return $sum;
}
@n = (4, 17, 14, 23);
$p = add_number(@n);
print $p . "<br>";
print end_html;
