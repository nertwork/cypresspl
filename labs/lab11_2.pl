#!/usr/bin/perl
use CGI qw(:standard);
print header, start_html;
print "<form action='$ENV{SCRIPT_NAME}' method='post'>\n";
print "File extension: <select name='extension'>\n";
print "<option value='.txt'>.txt</option>";
print "<option value='.log'>.log</option>";
print "</select>\n", br;
print "Specify a directory: <input type='text' name='dir'>\n";
print "<input type='submit' value='Go'>\n";
print "</form>";
# display content of selected file
if (param("filename"))
{
	print hr;
	open (MYFILE, param("filename"));
	while(<MYFILE>)
	{
		print p, "$_";
	}
	close (MYFILE);
}
# list files in directory for selection
if (param)
{
	$dir = param("dir");
	$extension = param("extension");
	opendir(MYDIR, $dir) || die "NO SUCH Directory: Images";
	while ($file = readdir(MYDIR) )
	{
		if ($file =~ /$extension/)
		{
			print "<a href='$ENV{SCRIPT_NAME}?filename=$dir\\" , $file , "'>" . $file .
			"</a><br>";
		} }
	closedir(MYDIR);
}
print end_html;
