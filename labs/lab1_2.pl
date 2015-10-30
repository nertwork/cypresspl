#!/usr/bin/perl
use strict;
use CGI;
my $q = new CGI;
print $q->header("text/html"), $q->start_html("Hello");
print $q->h2("Hello CIS245!");
print $q->end_html;
