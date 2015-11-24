#!/usr/bin/perl
## File name: exam2_2.pl
# ## Student: James Farr
use CGI qw(:standard);
print header, start_html;
if (param) {
    $i = int(rand(2));
    my $math = param('math');
    if ($math eq 'sublt')
    {
        SUB($i);
    }
    if ($math eq 'addlt')
    {
        ADD($i);
    }
    if ($math eq 'mullt')
    {
        MUL($i);
    }

}else{
    print start_form(-action=>$ENV{SCRIPT_NAME}, -method=>'post');
    print radio_group(-name=>'math',
        -values=>["addlt","sublt","mullt"],
        -linebreak => 'true',
        -default=>'Add');
    print submit();
    print end_form;
}
sub SUB {
    $result = $i - 5;
    print "The value of \$i is $result";
}
sub ADD {
    $result = $i + 5;
    print "The value of \$i is $result";
}
sub MUL {
    $result = $i * 5;
    print "The value of \$i is $result";
}
print end_html;
