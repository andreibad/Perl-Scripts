#!/usr/bin/perl
use strict;
#use warnigns;
use Data::Dumper;

 sub numerically_sort {

print Dumper (@_);
 my @sorted = sort{ $a <=> $b} @_;

return @sorted;
}
1;
