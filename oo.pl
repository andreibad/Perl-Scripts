#/usr/bin/perl
use warnings;
use strict;
require julie;
require horse;
print "walking: \n";
julie->walk;
horse->walk;

print "speaking: \n";
julie->speak;
julie->speak("yoy");
horse->speak;
