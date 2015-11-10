#!/usr/bin/perl
use CGI qw(:standard);
print header, start_html;
print "<style>";
print "span {display: inline-block; height:200px}";
print ".r {background-Color:red;  }";
print ".g {background-Color:green;  }";
print "</style>";
$i = 1;
while ($i <= 20)
{
	print "<span class= \'r\' style=\'width:" . $i . "px\'></span>$i";
	$i++;
}
$i = 20;
while ($i > 0)
{
	print "<span class= \'r\' style=\'width:" . $i . "px\'></span>$i";
	$i--; }
print "<br>";
$k = 1;
until ($k > 20)
{
	print "<span class= \'g\' style=\'width:" . $k. "px\'></span>$k";
	$k++; }
$k = 20;
until ($k < 1)
{
	print "<span class= \'g\' style=\'width:" . $k. "px\'></span>$k";
	$k--; }
print end_html;
