package Creatures;

use 5.010001;
use strict;
use warnings;

require Exporter;

our @ISA = qw(Exporter);

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use Creatures ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.


our @EXPORT = qw(
new getName setAge getAge walk 	
);

our $VERSION = '0.01';


# Preloaded methods go here.

sub new { 
        my $class = shift; 
        my $name = shift; 
        my $self = {Name => $name, Age=>0}; 
 
        bless $self , $class; 
 
} 
sub getName{ 
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
print $self->getName , " has died\n"; 
} 



1;
__END__

=head1 Creatures 

Creatures - Perl extension for creating creatures

=head1 SYNOPSIS

  use Creatures;
  

=head1 DESCRIPTION

This module provides some generic methods that many creatures have 

=head2 EXPORT

None by default.


=head1 SEE ALSO

=head1 AUTHOR

badulescua, E<lt>andrei.badulescu@gmail.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2011 by badulescua

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.1 or,
at your option, any later version of Perl 5 you may have available.


=cut
