#!/usr/bin/perl

use Socket;
use strict;
use CGI qw(:standard);

print start_html;
my ($remote_ip, $remote_hostname);

$remote_hostname = gethostbyaddr(inet_aton($ENV{'REMOTE_ADDR'}), AF_INET); 

print "Content-Type: text/html\n\n";
print "Remote Hostname: ", $remote_hostname, "<br>\n";
print "Remote IP: ", $ENV{'REMOTE_ADDR'}, "<br>\n";
print "User Agent: ", $ENV{'HTTP_USER_AGENT'}, "<br>\n";
print end_html;
