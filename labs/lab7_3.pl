#!/usr/bin/perl
use CGI qw(:standard);
print header, start_html;
print "<form action='$ENV{SCRIPT_NAME}' method='post'>";
print "Keyword: <input type='text' name='keyword'>";
print "<input type='submit' value='Go'><br><br>";
print "Enter a paragraph:<br><textarea name='str' rows='10' cols='70'></textarea>";
print "</form>";
if (param) {
	print hr;
	$keyword = param("keyword");
	@str = split(/\s/, param("str")); #pass user entry to gw to create an array
	$result = undef; # declare an empty variable
	$size = @str;
	$i=0;
	while ($i < $size)
	{
		$s = $str[$i];
		$s =~ s/[[:punct:]]//g; #remove punctuation if any
		if (lc($s) eq lc($keyword)) # convert to lowercase
		{
			$result .= "<span style='background-color: yellow'>". $str[$i] ."</span>". " ";
		}
		else {
			$result .= $str[$i] . " ";
		}
		$i++; }
	print $result;
}
print end_html;
