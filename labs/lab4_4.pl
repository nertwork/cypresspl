#!/usr/bin/perl
use CGI qw(:standard);
print header, start_html;
if (!param) {
	print start_form(-action=>$ENV{SCRIPT_NAME});
	print hidden(-name=>'plan', -default=>'This is the result of plan 1.');
	print p, popup_menu(
		-name=>'TV',
		-values=>['CNN','FOX','HBO'],
		-default=>'HBO');
	# scrolling list
	my %labels=('A'=>'Perl',
		'B'=>'PHP',
		'C'=>'Python',
		'D'=>'Visual C#');
	print p, scrolling_list(
		-name=>'program',
		-values=>['A','B','C','D'],
		-default=>['A','C'],
		-size=>3,
		-multiple=>'true',
		-labels=>\%labels);
	# Text area
	print "<p>Comments:", br;
	print textarea(-name=>'comment',
		-default=>'Enter your comments here..',
		-rows=>10,
		-columns=>60);
	print p, submit(-value=>'Send');
	print reset;
	print end_form;
}
else {
	print hr, param('plan'), br;
	print param('TV'), br;
	print param('program'), br;
	print param('comment'), br;
}
print end_html;
