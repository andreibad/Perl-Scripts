use strict;
use warnings;

package Human;
require Creatures;
use base qw(Exporter);

our @EXPORT = qw(new speak);
our @EXPORT_OK = qw(haircolor musicstyle university humantraits );
our %EXPORT_TAGS = ( all => [@EXPORT, @EXPORT_OK]);


our @ISA = qw(livingcreature);


sub new 
{
        my $self = shift->SUPER::new(@_);
        $self->{$_} = 0 for qw(haircolor musicstyle university);

        return $self;
}

sub setHaircolor{
        my $class = shift;
        my $color = shift;

        $class->{haircolor} = $color;
}
sub setMusicstyle{
        my $class = shift;
        my $style = shift;

        $class->{musicstyle}= $style;
}

sub setUniversity{
        my $class = shift;
        my $university = shift;

        $class->{university} = $university;

}

sub getHumantraits{
        my $self = shift;
        foreach my  $key (keys %$self){
                print $key ,": ",  $self->{$key}, "\n";
        }
}


sub speak
{       my $class = shift;

        my $name = '';
        if (ref $class){
                $name = $class->name;
        }
        else{
                $name = $class;
        }

        my $sound = '';
        if (scalar @_ > 0) {
                $sound  = shift;
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
             
