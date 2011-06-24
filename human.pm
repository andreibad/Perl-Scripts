#/usr/bin/perl
use strict;
use warnings;

package human;
require livingcreature;
our @ISA = qw(livingcreature);

sub speak
{	my $class = shift;
	my $sound = ''; 
	if (scalar @_ > 0) {	
		$sound	= shift;
	}
	if ($sound ne '')
	{
		print "$sound\n";
	}
	else{
		print "hummm\n";
	}

}



1;
