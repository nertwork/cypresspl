#!/usr/bin/perl
print "Content-Type: text/html\n\n";
print "<!Doctype html>";
print "<html><body>";
use constant {
SEC => 0,
MIN => 0,
HOUR => 0,
MDAY => 1,
MON => 0,
YEAR => 2025,
};
print "2025 New Year Day<br>";
print MDAY, "/", (MON+1), "/", YEAR, " ", HOUR, ":", MIN, ":", SEC, "\n<br>";
for (1..10)
{
print $_, " ";
}
print "\n<br>";
($a, $b) = (2, 4);
print $a, "\n<br>";
print $b, "\n<br>";
($x, $y, $z) = (5, 7, 9);
print $x, "\n<br>";
print $y, "\n<br>";
print $z, "\n<br>";
print "Server Name: ", $ENV{'SERVER_NAME'}, "<br>\n";
print "Running on Port: ", $ENV{'SERVER_PORT'}, "<br>\n";
print "Server Software: ", $ENV{'SERVER_SOFTWARE'}, "<br>\n";
print "Server Protocol: ", $ENV{'SERVER_PROTOCOL'}, "<br>\n";
print "CGI Revision: ", $ENV{'GATEWAY_INTERFACE'}, "<br>\n";
print "<p>The script name is ", $ENV{SCRIPT_NAME};
print "</body></html>";
