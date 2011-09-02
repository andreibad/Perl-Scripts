
use strict;
use warnings;
use Data::Dumper;

my $resource =
"http://api.wolframalpha.com/v2/query?input=mt+whitney&appid=X8UR2U-K7E3YPE5EH";

my $content = parse( get($resource) );

print Dumper ($content);

sub get {
    use LWP::UserAgent;
    my $url = shift;
    my $req = HTTP::Request->new( GET => $url, HTTP::Headers->new );
    $req->header( Accept => 'text/xml' );
    my $res = LWP::UserAgent->new->request($req);
    die $res->status_line unless $res->is_success;
    return $res->content;
}

sub parse {
    use SOAP::Lite;
    return SOAP::Custom::XML::Deserializer->deserialize(shift)->root;
}

