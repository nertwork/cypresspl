#!/usr/bin/perl
use CGI qw(:standard);
print header, start_html;
#if structure
if (param("uid") and param("psd"))
{
	my $uid=param("uid");
	my $psd=param("psd");
	if ($uid eq "cis245" && $psd eq "apple")
	{
		print "<META HTTP-EQUIV='REFRESH' CONTENT='0;URL=http://www.cnn.com'>";
	}
	else 
	{
		print "Not an authorized user!";
	}
}
else {
	print "<form action='$ENV{SCRIPT_NAME}' method='post'>";
	print "User ID: <input type='text' name='uid'><br>";
	print "Password: <input type='password' name='psd'>";
	print "<p><input type='submit' value='Submit'></p>";
	print "</form>";
}
print hr;
# unless structure
unless (param("fn"))
{
	print "<form action='$ENV{'SCRIPT_NAME'}' method='post'>\n";
	print "First name: <input type='text' name='fn'>\n",br;
	print "<input type='submit' value='Submit'>\n</form>\n";
} else {
	$fn = param('fn');
	@fn = split(//, $fn); # split string to char array
	unless ($fn[0] ne uc($fn[0])) # uc()
	{
		print "Welcome, " . $fn . "!";
	}
	else {
		print "The first letter must be upper case!";
	}
}
print end_html;
