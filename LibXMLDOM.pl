use strict;
use warnings;
use XML::LibXML;
use Data::Dumper;

my $parser = XML::LibXML->new;

my $dom = $parser->parse_file('pets.xml');

my $root = $dom->documentElement();

my @children = $root->childNodes();

#go through all top level children, and print their tag name
foreach my $child (@children) {
    my $type = $child->nodeType;
    if ( $type == 1 ) {
        my $name = $child->nodeName();
        print $name , "\n";
    }
}

#print names of pets

my @nameNodes = $root->getElementsByTagName("name");

foreach my $name (@nameNodes)

{
    print $name->textContent, "\n";
}
