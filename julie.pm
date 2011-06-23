#/usr/bin/perl
use warnings;
use strict;


package julie;
require human;

our @ISA = qw(human);


sub walk{
my $class = shift;
$class->SUPER::walk;
print "mersich yoy\n";

}

sub speak
{
my $class = shift;

print "yoy\n"

}


1;
