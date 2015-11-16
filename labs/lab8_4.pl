#!/usr/bin/perl
use CGI qw(:standard);
print header, start_html;
$i = int(rand(5)) + 1;
if ($i==1) {
	s1(); }
elsif ($i==2)
{
	s2(); }
elsif ($i==3)
{
	s3(); }
elsif ($i==4)
{
	s4(); }
else {
	s5(); }
foot();
sub foot {
	print p,"&#169;copyright 2021 CIS245 Perl Programming.";
}
sub s1 {
	print "<body bgcolor='#abcdef'>\n";
	print "Bring something up from the back burner.";
}
sub s2 {
	print "<body bgcolor='red'>\n";
	print "He who hurries cannot walk with dignity.";
}
sub s3 {
	print "<body bgcolor='yellow'>\n";
	print "A loved one is of utmost importance at this time.";
}
sub s4 {
	print "<body bgcolor='orange'>\n";
	print "Your dearest wish will come true.";
}
sub s5 {
	print "<body bgcolor='pink'>\n";
	print "Answer what your hearts prompts you.";
}
print end_html;
