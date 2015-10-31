#!/usr/bin/perl

use strict;
use warnings;

print "Content-Type: text/html\n\n";

my $dir = '../labs';
my @files = ();

opendir(DIR, $dir) or die $!;

while (my $file = readdir(DIR)) {

    # Use a regular expression to ignore files beginning with a period
    next if ($file =~ m/^\./);
    push @files, $file;
}

closedir(DIR);

foreach (sort @files) {
    print "<a href=labs/$_>$_</a>\n </br>";
}

exit 0;
