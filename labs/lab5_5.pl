#!/usr/bin/perl
use CGI qw(:standard);
print header, start_html;
if (!param)
{
	print "<form action='$ENV{SCRIPT_NAME}' method='post'>";
	print "<table>";
	print "<tr><td>Salesperson name:</td>";
	print "<td><input type='text' name='Salesperson' size=30></td></tr>";
	print "<tr><td>Sales amount:</td>";
	print "<td><input type='text' name='Sales' size=10></td></tr>";
	print "<tr><td>Bonus rate (e.g. 0.06):</td>";
	print "<td><input type='text' name='Rate' size=10></td></tr>";
	print "</table>";
	print "<input type='submit' value='Submit'> <input type='reset'>";
	print "</form>";
}
else
{
#declare variables
	my ($name, $sales, $rate, $bonus, $size, @errors);
#assign values to variables
	$name = param('Salesperson');
	$sales = param('Sales');
	$rate = param('Rate');
#validate input data
	if ($name eq "") {
		push(@errors, "Please enter your name.");
	}
	if ($sales eq "") {
		push(@errors, "Please enter a sales amount.");
	}
	if ($rate eq "" or ($rate < .05 or $rate > .1)) {
		push(@errors,
			"change bonus rate to be at least 5% and not greater than 10%.");
	}
	$size = @errors;
	if ($size == 0)
	{
#calculate bonus amount
		$bonus = $sales * $rate;
#create Web page
		print "<html><body>\n";
		print "<h4>Bonus Calculation</h4>\n";
		print "Salesperson: $name<br>\n";
		printf "Your bonus is \$%.2f.<br><br>\n", $bonus;
		printf "You entered a sales amount of \$%.2f and a \n", $sales;
		printf "bonus rate of %.1f%%.<br>\n", $rate * 100;
		print "</body></html>\n";
	}
	else
	{
#create error Web page
		print "<html><body>\n";
		print "<h4>Click the Back button to return to the form, then:</h4>\n";
		for (my $x = 0; $x < $size; $x = $x + 1)
		{
			print "$errors[$x]<br>\n";
		}
		print "</body></html>\n";
	}
}
print end_html;
