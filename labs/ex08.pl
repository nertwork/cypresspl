#!/usr/bin/perl
## File name: ex07.pl
## Student: James Farr
use CGI qw(:standard);
print header, start_html;
if ((param('first_int')) and (param('second_int'))) {
	if (param('math')=="Sub")
	{
		SUB(param('first_int'),param('second_int'));
	}
	if (param('math')=="Add")
	{
		ADD(param('first_int'),param('second_int'));
	}
	
}else{
print start_form(-action=>$ENV{SCRIPT_NAME}, -method=>'post');
print "<p>First number: <input text='text' name='first_int' </p>\n",br;
print "<p>Second number: <input text='text' name='second_int' </p>\n",br;
print radio_group(-name=>'math',
	        -values=>["Add","Sub"],
		-linebreak => 'true',
		-default=>'Add');
print p, submit(-value=>'Send');
print end_form;
}
sub SUB {
	$result = ($_[0] - $_[1]);
	print "The difference is $result";
}
sub ADD {
	$result = ($_[0] + $_[1]);
	print "The sum is $result";
}
print end_html;
