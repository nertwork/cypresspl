#!/usr/bin/perl
### File name: ex03.pl
### Student: James Farr
print "Content-Type: text/html\n\n";
for ($i=1; $i<=5; $i++)
{
	print int(rand(47)), " ";
}
