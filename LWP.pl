use strict; 
use warnings;
use LWP;

my $browser; 

my $translation = translate('leaf', 'en_de');
print $translation , "\n";


sub translate {


	my ($text, $language_path) = @_;
	my ($content, $message, $is_success) = do_POST(
			'http://babelfish.yahoo.com/translate_txt',
			[ 'trtext' => $text, 'lp' => $language_path, 'ei' => 'UTF-8' ],
			);
	print $message , "\n";	

	die "Error in translation $language_path: $message\n"
		unless $is_success;

	if ($content =~ m{<div id="result"><div style.*?>(.*?)</div></div>}is) {
		my $translation;
		$translation = $1;
# Trim whitespace:
		$translation =~ s/\s+/ /g;
		$translation =~ s/^ //s;
		$translation =~ s/ $//s;
		return $translation;
	} else {
		die "Can't find translation in response to $language_path";
	}
}


sub do_POST{

	$browser = LWP::UserAgent->new() unless $browser;
	my $resp  = $browser->post(@_);
	print $resp->headers_as_string, "\n";	
	return ($resp->content, $resp->status_line, $resp->is_success, $resp) if wantarray;
	return unless $resp->is_success;
	return $resp->content;

}
