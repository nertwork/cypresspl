#!/usr/bin/perl
use CGI qw(:standard);
print header, start_html;
if (param) {
	use strict;
	#declare variables
	my ($item, $quantity, $units_per_box, $full, $remain);
	#assign values to variables
	$item = param('Item');
	$quantity = param('Quantity');
	$units_per_box = param('Units');
	#calculate number of full boxes and number remaining
	$full = $quantity / $units_per_box;
	$remain = $quantity % $units_per_box;
	#create Web page
	print start_html;
	print "Item: $item<BR>\n";
	print "Quantity: $quantity<BR>\n";
	print "Units per box: $units_per_box<BR>\n";
	printf "Full boxes: %d<BR>\n", $full;
	printf "Remaining units: %d<BR>\n", $remain;
}
else {
	print "<form action='$ENV{SCRIPT_NAME}' method='post'>";
	print "Item: <select name='Item'>";
	print "<option value='Apple'>Apple";
	print "<option value='Banana'>Banana";
	print "<option value='Orange'>Orange";
	print "</select>";
	print "<p>Quanity: <INPUT type='text' NAME='Quantity' SIZE=4></p>";
	print "<p>Units per box: <INPUT type='text' NAME='Units' SIZE=4></p>";
	print "<P><INPUT TYPE='submit' VALUE='Calculate'></P>";
	print "</FORM>";
}
print end_html;
