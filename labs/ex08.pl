#!/usr/bin/perl
## File name: ex07.pl
## Student: James Farr
use CGI qw(:standard);
print header, start_html;
if ((param('frist_int')) and (param('second_int'))) {
	if (param('sub'))
	{
		SUB(param('first_int'),param('second_int'));
	}
	if (param('add'))
	{
		ADD(param('first_int'),param('second_int'));
	}
	
}else{
print start_form(-action=>$ENV{SCRIPT_NAME}, -method=>'post');
print "<p>First number: <input text='text' name='first_int'\n",br;
print "<p>Second number: <input text='text' name='second_int'\n",br;
print "<input type='submit' name='add' value='Add'>\n",br;
print "<input type='submit' name='sub' value='Subtract'>\n";
}
sub SUB {
	$result = ($_[0] - $_[1]);
	print "The difference is $result";
}
sub ADD {
	$result = ($_[0] + $_[1]);
	print "The difference is $result";
}
print end_html;
