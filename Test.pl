#!/usr/bin/perl
use strict;
use warnings;
#use re "debug";

use Tools;
use Data::Dumper;


open (INPUT, $ARGV[0]) or die "cannot open input file\n";

my %HoA;
while ( <INPUT> ) {
        
	print "before regex: ". Dumper ($_);	
	next unless s/^(.*?):\s*//;
	print "after regex: " . Dumper ($_);	
	$HoA{$1} = [ split ];
}

print Dumper (%HoA);


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
