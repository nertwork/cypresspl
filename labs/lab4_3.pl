#!/usr/bin/perl
use CGI qw(:standard);
print header, start_html;
if (!param) {
	print start_form(-method=>'post', -action=>$ENV{SCRIPT_NAME}, -enctype=>'application/x-www-form-urlencoded', -name=>'form1');
	print br,"User ID: ";
	print textfield(-name=>'UID',
		-size=>10,
		-maxlength=>15);
	print br,"Password: ";
	print password_field(-name=>'psd',
		-size=>10,
		-maxlength=>15);
	print "<p>Blood Type: ";
	print radio_group(-name=>'bloodtype',
		-values=>['A','B','O','AB']);
	print p, checkbox(-name=>'CIS245',
		-checked=>1,
		-value=>'Yes',
		-label=>'Are you taking CIS245?');
	print "<p>What is/are your favorite subject(s)? ";
	print checkbox_group(-name=>'subject',
		-values=>['Chemistry','Biology','Physics'],
		-default=>['Chemistry','Biology'],
		-labels=>\%labels);
	print p, submit(-value=>'Send');
	print reset;
	print end_form;
} else {
	print "You entered: <ul>";
	print "<li>UserID: ", param('UID');
	print "<li>Password: ", param('psd');
	print "<li>Blood Type: ", param('bloodtype');
	print "<li>Course: ", param('CIS245');
	print "<li>Favorite Subject(s): ", param('subject');
	print "</ul>";
}
print end_html;
