#/usr/bin/perl
use warnings;
use strict;


package horse;
require animal;

our @ISA = qw(animal);


sub walk{
my $class = shift;
$class->SUPER::walk;

}

sub speak
{
my $class = shift;

print "neigh neigh\n"

}


1;
