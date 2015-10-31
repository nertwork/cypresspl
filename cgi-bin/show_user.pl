#!/usr/bin/perl

use Socket;
use strict;

print "Content-Type: text/html\n\n";

my ($remote_hostname, $ENV);
if (exists$ENV{'REMOTE_ADDR'}) {
	$remote_hostname = gethostbyaddr(inet_aton($ENV{'REMOTE_ADDR'}), AF_INET); 
	print "Remote Hostname: ", $remote_hostname, "<br>\n";
	print "Remote IP: ", $ENV{'REMOTE_ADDR'}, "<br>\n";
	print "User Agent: ", $ENV{'HTTP_USER_AGENT'}, "<br>\n";
} else {
	print "No IP is used";
}

