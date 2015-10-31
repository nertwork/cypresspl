#!/usr/bin/perl
use CGI
$q = CGI->new;
print $q->header;
print $q->start_html;
print $q->font({-color=>"blue", -size=>"4"},"Hello, there!!");
print $q->end_html;
