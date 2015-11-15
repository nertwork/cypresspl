#!/usr/bin/perl
use CGI qw(:standard);
print header, start_html;
@arr1=("C#", "Java", "Perl", "PHP", "Python");
$size = @arr1; # get the total number of elements
print "I plan to learn:<br>", ul;
for ($i=0; $i < $size; $i++)
{
	print li($arr1[$i]);
}
print "</ul>", p, "I plan to study:<br>", ul;
@arr2 = qw(CIS MIS IST CET);
foreach $a (@arr2)
{
	print li($a);
}
print "</ul>", p, "The school teaches:<br>", ul;
%hash1 = ( "CIS218"=>"C# programming",
	"CIS223"=>"Java programming",
	"CIS245"=>"Perl programming",
	"CIS246"=>"PHP programming",
	"CIS247"=>"Python programming");
@k = keys(%hash1);
foreach $h (@k)
{
	print li($h, $hash1{$h});
}
print "</ul>", p, "Available majors:<br>", ul;
%hash2 = ( "CIS", "Computer Information Systems",
	"MIS", "Management Information Systems",
	"IST", "Information Systems and Technologies",
	"CET", "Computer Engineering and Technology");
@k = keys(%hash2);
@v = values(%hash2);
$size = @k;
for ($i = 0; $i < $size; $i++)
{
	print li, $k[$i], ": ", $v[$i];
}
print end_html;
