#!/usr/bin/perl
use strict;

sub sum  {
	my @terms = @_;
	my $sum = 0;
	$sum += $_ for @terms;
	return $sum;
}

my @terms = ( 1, 2 );
my $sum = sum @terms;

while( $sum < 4000000 ){
	push( @terms, $sum );
	$sum = sum @terms[-1,-2];
}

my @even = grep { $_ % 2 == 0 } @terms;

$sum = sum @even;

print $sum . "\n";

