# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl Creatures.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More tests => 5;
BEGIN { use_ok('Creatures') };

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.
ok( 1, '1 is true' );
is( 2 + 2, 4, 'The sum is 4' );
is( 2 * 3, 6, 'The product is 5' );
isnt( 2 ** 3, 6, "The result isn't 6" );

