#/usr/bin/perl
use strict;
use warnings;

package livingcreature;


sub new {
	my $class = shift;
	my $name = shift;
	my $self = {Name => $name, Age=>0};

	bless $self , $class;

}
sub name{
	my $self = shift;
	if (ref $self ){
		return $self->{Name};	
	}
	else{
		return "an unnamed $self";
	}
}

sub setAge{
	my $self = shift;
	$self->{Age} = shift;
}

sub getAge{
	my $self = shift;
	if (ref $self){	
		return $self->{Age};
	}
	else{
		return 100;
	}
}


sub walk{

	my $class = shift;
	print "$class walks\n";

}

sub DESTROY {
my $self = shift;
print $self->name , " has died\n";
}


1;
