#!/usr/bin/perl
use CGI qw(:standard);
print header, start_html;
if (param) {
my $gd=param("gd");
if ($gd > 100 || $gd < 0) ## || means "or" ###
{
 print "Are you nuts?";
}
elsif ($gd >= 90)
{
 print "You got an A.";
}
elsif ($gd >= 80)
{
 print "You got a B.";
}
elsif ($gd >= 70)
{
 print "You got a C.";
}
elsif ($gd >= 60)
{
 print "You got an D.";
}
else {
 print "You got an F!";
}
}
else
{
print "<form action='$ENV{SCRIPT_NAME}' method='post'>";
print "Enter the grade [0-100]: <input type='text' name='gd'>\n";
print "<input type='submit' value='Submit'>\n</form>\n";
}
print end_html;
