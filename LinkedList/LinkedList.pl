use strict;
use warnings;

use Data::Dumper;
use LinkedListNode;

my $head = LinkedListNode->new(0);
$head->setSuccessor( new LinkedListNode(1) );
my $n1 = $head->getSuccessor();
$n1->setSuccessor( new LinkedListNode(2) );
my $n2 = $n1->getSuccessor();
$n2->setSuccessor( new LinkedListNode(3) );
my $n3 = $n2->getSuccessor();
        $n3->setSuccessor( new LinkedListNode(4) );
my $n4 = $n3->getSuccessor();
$n4->setSuccessor( new LinkedListNode(5) );
my $n5 = $n4->getSuccessor();
$n5->setSuccessor( new LinkedListNode(6) );
my $n6 = $n5->getSuccessor();
$n6->setSuccessor( new LinkedListNode(7) );
my $n7 = $n6->getSuccessor();
$n7->setSuccessor( new LinkedListNode(8) );
my $n8 = $n7->getSuccessor();
$n8->setSuccessor( new LinkedListNode(9) );
my $n9 = $n8->getSuccessor();
$n9->setSuccessor( new LinkedListNode(10) );
my $n10 = $n9->getSuccessor();
$n10->setSuccessor($head);

#print Dumper($head);

my %references;

sub findCircularReferences($);

findCircularReferences($head);

sub findCircularReferences($) {
    my $head = shift;
    bless $head, "LinkedListNode";
    if ( exists $references{$head} ) {
        print "circular reference found, node is referred to twice: ", $head,
          "\n";
        print Dumper ( keys %references );
        exit 0;

    }

    else {

        my $successor = $head->getSuccessor();
        my $reftype   = ref $successor;
        if ( $reftype ne 'LinkedListNode' )

        {

            print "not a circular list, reached the end of the list\n";
            print Dumper ( keys %references );
            exit 0;
        }
        else

        {
            $references{$head} = $head->getDatum();
            findCircularReferences($successor);
        }

    }

}

