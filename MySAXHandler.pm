package MySAXHandler;
use base qw(XML::SAX::Base);
use Data::Dumper;

sub start_document {
	my ($self, $doc) = @_;
# process document start event
	print "at the beginning of the document \n";
}

my $in_name = 0;

sub start_element {
	my ($self, $el) = @_;
# process element start event

	my $name = $el->{Name};
	if ($name  eq 'name' ){
		$in_name = 1;	
	}
#	print "attributes", Dumper($el->{Attributes});
#	print "namespace", Dumper($el->{NamespaceURI});
#	print "Prefix", Dumper($el->{Prefix});
#	print "localname", Dumper($el->{LocalName});
#
}



sub end_element{
	my ($self, $el) = @_;
	my $name = $el->{Name};
	if ($name  eq 'name' ){
		$in_name = 0;	
	}
}

sub characters{
	my ($self, $data) = @_; 
	if ($in_name == 1) {
		print $data->{Data},"\n";
	}
} 



return 1;
