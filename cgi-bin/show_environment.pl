#!/usr/bin/perl

use strict;

print "Content-Type: text/html\n\n";
print "Server Name: ", $ENV{'SERVER_NAME'}, "<br>\n";
print "Running on Port: ", $ENV{'SERVER_PORT'}, "<br>\n";
print "Server Software: ", $ENV{'SERVER_SOFTWARE'}, "<br>\n";
print "Server Protocol: ", $ENV{'SERVER_PROTOCOL'}, "<br>\n";
print "CGI Revision: ", $ENV{'GATEWAY_INTERFACE'}, "<br>\n";
