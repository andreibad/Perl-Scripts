#/usr/bin/perl
use warnings;
use strict;


package julie;
use human qw(all);

our @ISA = qw(human);


sub walk{
my $class = shift;
$class->SUPER::walk;

}


1;
