#!/usr/bin/perl
use CGI qw(:standard);
print header, start_html;
print "<form action='$ENV{SCRIPT_NAME}' method=post>\n";
print "User ID: <input type='text' name='uid'>", br;
print "Comment:", br, "<textarea name='comment' rows='5' cols='70'></textarea>";
print "<input type='submit' value='Submit'></form>";
print hr;
checkIt();
if (param) {
	open (MYFILE, ">>$file");
	@dt = localtime(); # get the date and time value
	$t = "$dt[2]:$dt[1]:$dt[0] " . ($dt[4]+1) . "/" . $dt[3] . "/" . ($dt[5]+1900);
	print MYFILE "<p><b>" . param("uid") . "</b>: " . param("comment") . "<br>" . $t .
	"</p>\n\n";
	close (MYFILE);
	showIt(); }
else {
	showIt(); }
sub checkIt {
	$file = 'blog.txt';
	if (-e $file)
	{
		print $file, " exists.";
	}
	else {
		open (MYFILE, ">$file");
		print $file, " is created.";
		close (MYFILE);
	}
}
sub showIt {
	open (MYFILE, $file);
	print <MYFILE>;
	close (MYFILE);
}
print end_html;
