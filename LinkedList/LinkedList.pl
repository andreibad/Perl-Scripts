use strict ;
use warnings;

use Data::Dumper;
use LinkedListNode;

my $head = LinkedListNode->new(0);
$head->setSuccessor (new LinkedListNode(1));
my $n1 = $head->getSuccessor();
$n1->setSuccessor(new LinkedListNode(2));
my $n2 = $n1->getSuccessor();
$n2->setSuccessor($n1);


#print Dumper($head); 

my %references;

sub findCircularReferences() {
	my $head= shift;
	bless $head, "LinkedListNode" ;	
	if (exists $references{$head}){
		print  "circular reference found, node is referred to twice: ", $head, "\n";
		print Dumper (keys %references);	
		exit 0;

	}

	else{

		my $successor = $head->getSuccessor();
		my $reftype = ref $successor;
		if ($reftype  ne 'LinkedListNode'  )

		{

			print "not a circular list, reached the end of the list\n";
			print Dumper (keys %references);	
			exit 0;
		}
		else

		{
			$references{$head} = $head->getDatum();
			findCircularReferences( $successor);
		}


	}

}


&findCircularReferences($head);


