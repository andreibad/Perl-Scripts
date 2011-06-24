#/usr/bin/perl
use strict;
use warnings;

package human;
require livingcreature;
our @ISA = qw(livingcreature);

sub speak
{	my $class = shift;

	my $name = '';
	if (ref $class){
		$name = $$class;
		print "speaking for a human of $name\n";

	}
	else{
		$name = $class;
	}

	my $sound = ''; 
	if (scalar @_ > 0) {	
		$sound	= shift;
	}
	if ($sound ne '')
	{
		print "$name says $sound\n";
	}
	else{
		print "$name says hummm\n";
	}

}


1;
