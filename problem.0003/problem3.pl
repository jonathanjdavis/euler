#!/usr/bin/perl
use strict;

use lib '../lib';
use Euler::Prime::Modulus 'is_prime';

sub prime_factor {
	my $x = shift;

	my $best ;

	my ($max, $test) = ( $x, 3 );

	while ( $max >= $test){
		if ( is_prime( $test ) && ( $max % $test == 0)){
			$best = $test;
			$max = $max / $test;
		} else {
			$test = $test + 2;
		}
	}
	return $best;
}

print prime_factor( 600851475143 ) . "\n";
