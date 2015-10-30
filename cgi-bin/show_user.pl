#!/usr/bin/perl

use Socket;
use warnings;

my $remote_ip = inet_aton($ENV{'REMOTE_ADDR'});
my $remote_hostname = gethostbyaddr($remote_ip, AF_INET); 

print "Content-Type: text/html\n\n";
print "Remote Hostname: ", $remote_hostname, "<br>\n";
print "Remote IP: ", $ENV{'REMOTE_ADDR'}, "<br>\n";
print "User Agent: ", $ENV{'HTTP_USER_AGENT'}, "<br>\n";
