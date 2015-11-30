#!/usr/bin/perl
use CGI qw(:standard);
print header, start_html;
if (param) {
	$file = param("file");
	$keyword = param("keyword");
	$str = "<span style='background-color: yellow'>$keyword</span>";
	open (MYFILE, $file) || die $!;
	@lines = <MYFILE>;
	print "<pre style='font-family:courier'>";
	foreach $r (@lines)
	{
		$r =~ s/$keyword/$str/gi; # replace
		print $r; }
	print "</pre>";
	close (MYFILE);
}
else {
	print "<form action='$ENV{SCRIPT_NAME}' method='post'>";
	print "Keyword: <input type='text' name='keyword'>", br;
	print "Specify a file: <input type='file' name='file'>";
	print "<input type='submit' value='Go'>";
	print "</form>";
}
print end_html;
