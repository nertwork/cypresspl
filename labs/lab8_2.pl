#!/usr/bin/perl
use CGI qw(:standard);
print header, start_html;
if (!param) {
	print "<form action='$ENV{SCRIPT_NAME}' method=get>\n",br;
	print "Which color is good for your?\n",br;
	print "<input type='radio' name='color' value='red'>Red\n",br;
	print "<input type='radio' name='color' value='blue'>Blue\n",br;
	print "<input type='radio' name='color' value='green'>Green\n",br;
	print "<input type='submit' value='Submit'>\n",br;
	print "</form>",br;
}
else {
	$color=param("color");
	if ($color eq "red")
	{
		red(); }
	if ($color eq "blue")
	{
		blue(); }
	if ($color eq "green")
	{
		green(); }
	confirm();
	print "</body></html>";
	sub confirm {
		print "Is it the color you wanted? ";
		print "<a href='http://www.cnn.com'><button>Yes</button></a> ";
		print "<a href='$ENV{SCRIPT_NAME}'><button>No</button></a> ";
	}
	sub red {
		print "<body bgcolor='red' text='white'>\n";
	}
	sub blue {
		print "<body bgcolor='blue' text='white'>\n";
	}
	sub green {
		print "<body bgcolor='green' text='white'>\n";
	}
}
print end_html;
