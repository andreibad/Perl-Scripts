use strict;
use warnings;


package LinkedListNode;

our @EXPORT = qw(new);


my $datum;
my $successor;

sub new(){

	my $class = shift;
	$datum = shift;
	$successor = shift;
	my $self = {"datum"=>$datum, "successor" => {}}; 	
	bless $self , $class;
	return $self;
}

sub getSuccessor(){
	my $self = shift;
	return $self->{"successor"}; 
}
sub setSuccessor(){
	my $self = shift;
	my $successor =shift;
	$self->{"successor"} = $successor ; 
}
sub getDatum(){
	my $self = shift;
	return $self->{"datum"}; 
}
sub setDatum(){
	my $self = shift;
	my $datum =shift;
	$self->{"datum"} = $datum ; 
}
return 1;



