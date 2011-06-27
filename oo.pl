#/usr/bin/perl
use warnings;
use strict;
require julie;
require horse;

#testing class methods

print "WALKING: \n";
julie->walk;
horse->walk;


print "SPEAKING: \n";
julie->speak;
julie->speak("yoy");
horse->speak;

print "NAMING: \n";
print "a horse named ", horse->name," is ", horse->getAge, " years old\n "; 


#testing instance methods


my $me = human->new('andrei'); 
$me->setAge(29);


print $me->name,' is ',  $me->getAge, " years old\n";

$me->speak("hello, i like fennesz"); 
$me->speak();
$me->haircolor("brown");
$me->musicstyle("folk");
$me->university("berkeley");

$me->humantraits;



