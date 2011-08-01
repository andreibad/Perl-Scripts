#!/usr/bin/perl
use strict;
use warnings;
#use re "debug";

use Tools;
use Data::Dumper;

our $units ;


open (INPUT, $ARGV[0]) or die "cannot open input file\n";

my %HoA;
while ( <INPUT> ) {
	next unless s/^(.*?):\s*//;
	$HoA{$1} = [ split ];
}

print Dumper (%HoA);

@{$HoA{'simpsons'}} =  map { uc $_} @{$HoA{'simpsons'}}; 

print Dumper %HoA;

my $foo = "Some value";
my $bar = "Another value";

who_am_i( *foo );
who_am_i( *bar );

sub who_am_i
    {
    my $glob = shift;

    print "I'm from package " . *{$glob}{PACKAGE} . "\n";
    print "My name is "       . *{$glob}{NAME}    . "\n";
    }

#Typeglobs don't have to dereference

*units = populate() ;
print $main::units{'km'}, "\n";
# Assign \%newhash to the typeglob
# Prints 70; no dereferencing needed!
my $hashref =populate();
print $hashref->{kg}, "\n"; 


sub populate {
my %newhash = (km => 10, kg => 70);
return \%newhash;
}


#foreach my $entry ( keys %main:: )
#    {
#    print "$entry\n";
#    }
#




#my @array = qw(13 4 7 2 9 8 5);
#
#my ($a1, $a2, $a3, $a4, $a5, $a6, $a7) = @array;
#
#print Dumper ($a1, $a7);
#

#my @sorted = numerically_sort(@array);

#print Dumper(@sorted);


#"foo bar foo" =~m/^(foo).*(?=\1)/;
#
#my $a = 5;
#my $left = ++$a;
#my $b = 5;
#my $right = $b++;
#print "$left $right \n";
#print '-' x 80 . "\n";
#
#my @alphabet = ('A' .. 'Z');
#print Dumper (@alphabet);
#
#
#print "say something or say stop to exit program\n";
#while (<STDIN>){
#	chomp($_);	
#	if ($_ eq "stop" ){
#		last;
#	}
#	print $_."\n";
#}
#
