#!/usr/bin/perl
use CGI
$q = CGI->new;
print $q->font({-color=>"blue", -size=>"4"},"Hello, there!!");
