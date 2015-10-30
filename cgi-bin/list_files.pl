#!/usr/bin/perl

use strict;
use warnings;

print "Content-Type: text/html\n\n";

my $dir = '../labs';

opendir(DIR, $dir) or die $!;

while (my $file = readdir(DIR)) {

    # Use a regular expression to ignore files beginning with a period
    next if ($file =~ m/^\./);

    print "<a href=labs/$file>$file</a>\n </br>";

}

closedir(DIR);
exit 0;
