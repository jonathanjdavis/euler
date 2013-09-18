#!/usr/bin/perl
use strict;

exit 0 if -f '/tmp/primes.txt';

my $url = 'http://primes.utm.edu/lists/small/millions/primes1.zip';

open my $fd, "curl -s $url|zcat|";
my @primes;

while( <$fd> ){
	chomp;
	next unless ( /^\s*(\d+\s+)+\d+\s*$/ );

	my @a = grep { /\d+/ } split /\s+/ => $_;

	push( @primes, $_ ) for @a;
}

close $fd;

open my $ofd, ">/tmp/primes.txt";
print $ofd join( "\n", @primes ) . "\n";
