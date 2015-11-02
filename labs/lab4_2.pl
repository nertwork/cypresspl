#!/usr/bin/perl
use CGI qw(:standard);
print header, start_html;
print start_form(-action=>$ENV{SCRIPT_NAME}, -method=>'post');
print p, radio_group(
	-name=>'subject',
	-values=>[qw(Chemistry Physics Biology Math)],
	-default=>'Math');
print p, checkbox_group(
	-name=>'major',
	-values=>[qw(CIS NCM ECT EET)],
	-default=>[qw(CIS ECT)]);
print p, submit(-name =>'Send');
print end_form;
if (param('subject'))
{
	print "You selected ", param('subject'), "!<br>";
}
if (param('major'))
{
	print "You selected ", param('major'), "!<br>";
}
print end_html;
