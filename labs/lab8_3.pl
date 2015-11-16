#!/usr/bin/perl
use CGI qw(:standard);
print header, start_html;
print "<form action='$ENV{SCRIPT_NAME}' method='post'>";
print "How many drawing? <input type='text' name='draw'>";
print "<input type='submit' value='Go'>";
print "<a href='$ENV{SCRIPT_NAME}'><button>Play Again</button></a>";
print "</form>";
if (param) {
	$draw = param("draw");
	@x;
	for ($i=0; $i < 49; $i++) # create an array of consecutive integer
	{
		$x[$i] = $i + 1;
		to
	}
	for ($n=0; $n < $draw; $n++)
	{
		shuffle();
		print getNumbers(), "<br>";
	}
	sub getNumbers
	{
		$numbers = undef;
		for ($i=0; $i < 5; $i++) # create an array of consecutive integer
		{
			$numbers .= $x[$i] . " ";
		}
		$mega = int(rand(999999999)%27) + 1;
		return $numbers . "mega " . $mega;
	}
	sub shuffle {
		$size = @x;
		for ($i=$size - 1; $i >= 0; $i--)
		{
			$r = int(rand(999999999)%49);
			$temp = $x[$i];
			$x[$i] = $x[$r];
			$x[$r] = $temp;
		} }
}
print end_html;
