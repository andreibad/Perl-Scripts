use strict;
use warnings;  
#use XML::SAX;
use XML::LibXML::SAX;

use MySAXHandler;

my $parser = XML::LibXML::SAX::ParserFactory->parser(
		Handler => MySAXHandler->new
		);

$parser->parse_uri($ARGV[0]);
