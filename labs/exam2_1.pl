#!/usr/bin/perl
## File name: exam2_1.pl
# ## Student: James Farr
use CGI qw(:standard);
print header, start_html;
my @names = ("anne", "lisa", "mary", "jane", "lucy");
foreach (@names) {
    print $_."\n<br>";
}
print end_html;
