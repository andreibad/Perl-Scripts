#!/usr/bin/perl
use strict;
#use warnigns;

use Tools;
use Data::Dumper;
my @array = qw(13 4 7 2 9 8 5);

my @sorted = numerically_sort(@array);

print Dumper(@sorted);

