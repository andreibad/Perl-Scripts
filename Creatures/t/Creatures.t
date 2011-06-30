# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl Creatures.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More tests => 8;

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

use Creatures::Human; 

 
my $me = Creatures::Human->new('andrei');  
ok($me->isa('Creatures::Human'), 'testing for human traits'); 


#testing Creatures specific methods 
is($me->getName, 'andrei', 'checking name is set correctly');
$me->setAge(29); 
is($me->getAge , 29, 'setting and getting age'); 

#testing Creatures::Human specific methods
is($me->speak("hello, i like fennesz"), 'andrei says hello, i like fennesz','testing speak method');
is($me->speak, 'andrei says hummm','testing speak method with no arguments');

$me->setHaircolor("brown"); 
$me->setMusicstyle("folk"); 
$me->setUniversity("berkeley"); 
 
is($me->getHaircolor,'brown');
is($me->getMusicstyle,'folk');
is($me->getUniversity,'berkeley');
   
 


