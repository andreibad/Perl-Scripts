use strict;
use warnings;
use XML::SAX;
use MySAXHandler;

my $parser = XML::SAX::ParserFactory->parser( Handler => MySAXHandler->new );

$parser->parse_uri( $ARGV[0] );
