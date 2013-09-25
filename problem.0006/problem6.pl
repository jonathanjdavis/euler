#!/usr/bin/perl
use strict;

sub sum {
	my $x = 0;

	$x += $_ for @_;

	return $x;
}

my $s = sum( 1..100 ) ** 2;
my $x = sum( map { $_ ** 2 } ( 1..100 ) );

my $delta = $s - $x;

print "$delta\n";
