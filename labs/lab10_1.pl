#!/usr/bin/perl
use CGI qw(:standard);
print header, start_html;
print "<form action='$ENV{SCRIPT_NAME}' method='post'>\n";
print "Enter a keyword: <input type='text' name='keyword'>\n",br;
print "Enter a long sentence with at least two keywords: \n",br;
print "<input type='text' name='str' size='90'>\n",br;
print "<input type='submit' value='Submit'></form>";
unless (!param)
{
	$keyword=param('keyword');
	$str=param('str');
	$result=index($str, $keyword);
	unless ($result==-1)
	{
		print "<p>This article contains <b>$keyword</b>.</p>";

		$newkey="<b style='background-color:yellow'>$keyword</b>";
		$str =~ s/$keyword/$newkey/gi;
		print $str;
	}
	else
	{
		print "No found!";
	}
}
print end_html;
