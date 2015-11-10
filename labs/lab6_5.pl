#!/usr/bin/perl
use CGI qw(:standard);
print header, start_html;
if (!param) {
	$file=$ENV{'SCRIPT_NAME'};
	print "<form action=$file method=post>\n";
	print "How many drawing?: <input type=text name=draw>\n",br;
	print "<input type=submit value=Submit>\n</form>\n";
} else {
	$n = param('draw'); # retrieve user input
	@x; # declare an array
	my ($i);
	for ($i=0; $i < 49; $i++)
	{
		$x[$i] = $i + 1;
		$str .= $x[$i] . " ";
	}
	$size = @x; # size of x array
	for ($x = 0; $x < $n; $x++) # loop for the number of drawings
	{
		$str = "";
		$k = 0;
		while ($k<5) # shuffle 5 times
		{
			$last = $size - 1;
			for ($i=0; $i < $last; $i++)
			{
				$r = int(rand() * 999999999) % $size; #0 ~ 48
				$temp = $x[$last];
				$x[$last] = $x[$r];
				$x[$r] = $temp;
				175
				$last--; }
			$k++; }
		for ($i=0; $i < 5; $i++) # display the drawing results
		{
			$str .= $x[$i] . " ";
		}
		$str .= " mega: " . (int(rand() * 999999999) %27 + 1); #1 ~ 17
		print $str . "<br>";
	}
}
print end_html;
