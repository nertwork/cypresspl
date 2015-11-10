#!/usr/bin/perl
use CGI qw(:standard);
use Switch;
print header, start_html;
if (param) {
	$n1 = param("n1");
	print "<head><style>";
	print "b {position: absolute}";
	print "</style></head><body>";
	$i = 1;
	do {
		$x = int(rand(800));
		$y = int(rand(600));
		switch ($i%4) {
			case 0
			{ # $i is even number
				print "<b style='left:". $x. "px\; top:". $y. "px\; background-color:
				red'>$i</b>";
			}
			case 1 {
				print "<b style='left:". $x. "px\; top:". $y. "px\; background-color:
				green'>$i</b>";
			}
			case 2 {
				print "<b style='left:". $x. "px\; top:". $y. "px\; background-color:
				blue'>$i</b>";
			}
			case 3 {
				print "<b style='left:". $x. "px\; top:". $y. "px\; background-color:
				yellow'>$i</b>";
			} }
		$i++;
	} while ($i <= $n1); ### the user input ###
}
else {
	print "<form action='$ENV{SCRIPT_NAME}' method='post'>";
	print "Enter a positive number bigger than 100: <input type='text' name='n1'
	size=5>";
	print "<input type='submit' value='Go'>";
	print "</form>";
}
print end_html;
