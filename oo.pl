#/usr/bin/perl
use warnings;
use strict;
require julie;
require horse;

print "walking: \n";
julie->walk;
horse->walk;


my $me = human->new('andrei'); 
$me->setAge(29);
print $me->name,' is ',  $me->getAge, " years old\n";

$me->speak("hello, i like fennesz"); 
$me->speak();

print "speaking: \n";
julie->speak;
julie->speak("yoy");
horse->speak;
