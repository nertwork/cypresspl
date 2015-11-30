#!/usr/bin/perl
use CGI qw(:standard);
use strict;
print header, start_html;
my $file = $ENV{SCRIPT_NAME};
$file =~ s/\/myperl\///;  ### remove /mperl/ from the path
if (param) {
	#declare variables
	my ($game, $skill, @records);
	my ($agree, $disagree, $noComment);
	my ($s1, $s2, $s3, $s4);
	my $count=0;
	#assign input items to variables
	$game = param('game');
	$skill = param('skill');
	#save form data to a file
	open(OUTFILE, ">>", "$file.txt") || die;
	print OUTFILE "$game,$skill\n";
	close(OUTFILE);
	#calculate survey statistics
	open(INFILE, "<", "$file.txt") || die;
	@records = <INFILE>;
	close(INFILE);
	foreach my $rec (@records)
	{
		$count++;
		my @rs = split(/,/, $rec);
		$game=$rs[0];
		$skill=$rs[1];
		if ($rs[0]=~"Agree") { $agree++; }
		elsif ($rs[0]=~"Disagree") { $disagree++; }
		elsif ($rs[0]=~"No Comment") { $noComment++; }
		if ($rs[1]==1) {$s1++; }
		elsif ($rs[1]==2) {$s2++; }
		elsif ($rs[1]==3) {$s3++; }
		elsif ($rs[1]==4) {$s4++; }
	}
	print "Total $count answers.<br>";
	print "<p>Question 1:<ul>";
	print "<li>Agree: $agree";
	print "<li>Disagree: $disagree";
	print "<li>No Comment: $noComment";
	print "</ul>";
	print "Question 2:<ul>";
	print "<li>Level 1 : $s1";
	print "<li>Level 2 : $s2";
	print "<li>Level 3 : $s3";
	print "<li>Level 4 : $s4";
	print "</ul>";
	#display the results
	print "The data are: ",ol;
	open (MYFILE, "$file.txt") || die;
	@records = <MYFILE>;
	foreach my $rec (@records)
	{
		print "<li>$rec\n";
	}
	close (MYFILE);
	print "</ol>";
}
else {
	print "<h4>Simple Feedback</h4>";
	print "<form action='$ENV{SCRIPT_NAME}' method='post'>";
	print "<p>Sudoku is a good game.";
	print "<br><input type='radio' name='game' value='Agree'>Agree";
	print "<br><input type='radio' name='game' value='Disagree'>Disagree";
	print "<br><input type='radio' name='game' value='No Comment'>No Comment</p>";
	print "<p>What is your skill level?";
	print "<br><input type='radio' name='skill' value=1>1";
	print "<br><input type='radio' name='skill' value=2>2";
	print "<br><input type='radio' name='skill' value=3>3";
	print "<br><input type='radio' name='skill' value=4>4</p>";
	print "<input type='submit' value='Submit'>";
	print "</form>";
}
print end_html;
