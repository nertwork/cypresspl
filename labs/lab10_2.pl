#!/usr/bin/perl
use CGI qw(:standard);
print header, start_html;
if (!param)
{
	print "<form action='$ENV{SCRIPT_NAME}' method='post'>\n";
	print "Enter a long paragraph:\n", br;
	print "<textarea name='str' rows='10' cols='70'></textarea>\n", br;
	print "<input type='submit' value='Count'></form>";
}
else
{
	$keyword = param('keyword');
	$str = param('str');
	$str = lc($str); # change to lowercase
	$str =~ s/[[:punct:]]//g; # remove all punctuations
	@s = split(/ /, $str); # break the string to array of words
	$size = @s; #find the number of elements in @s
	@s = sort @s; # sort the array
	@word; # array to keep unique words
	@freq; # array to keep number of occurrence (frequency)
	$word[0] = $s[0];
	$n = 1;
	for ($i = 1; $i < $size; $i++)
	{
		if ($s[$i] ne $s[$i-1])
		{
			$word[$n] = $s[$i]; # add the unique word to array
			$freq[$n-1] = $i - $n + 1; # add the frequency to array
			$freq[$n] = $size - $i;
			$n++;
		}
	}
	print "There are <b>$n</b> different words. They are:<ul>";
	$size = @word;
	for ($i = 0; $i < $size; $i++)
	{
		print "<li>" . $word[$i] . " (" . $freq[$i] . ")</li>";
	}
	print "</ul>";
}
print end_html;
