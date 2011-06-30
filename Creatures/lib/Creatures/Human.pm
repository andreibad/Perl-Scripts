use strict;
use warnings;

package Creatures::Human;
require Creatures;
use base qw(Exporter);

our @EXPORT = qw(new speak getHaircolor getMusicstyle getUniversity setHaircolor setMusicstyle setUniversity getHumantraits );


our @ISA = qw(Creatures);


sub new 
{
        my $self = shift->SUPER::new(@_);
        $self->{$_} = 0 for qw(haircolor musicstyle university);

        return $self;
}

sub getHaircolor{
        my $class = shift;
        $class->{haircolor};
}
sub getMusicstyle{
        my $class = shift;
        $class->{musicstyle};
}

sub getUniversity{
        my $class = shift;
        $class->{university};

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
                print $key ,": ",  $self->{$key}, ",";
        }
}


sub speak
{       my $class = shift;

        my $name = '';
        if (ref $class){
                $name = $class->getName;
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
                return "$name says $sound";
        }
        else{
                return "$name says hummm";
        }

}


1;
             
