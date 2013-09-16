#!/usr/bin/perl
use strict;
use Test::More;

sub factor {
	my ($test, $factor) = @_;

	my $x = $test / $factor;
	$x = int($x);
	
	return ( ( $x * $factor ) == $test );
}

# Keep a cache of prime numbers as we chug along..
my %PRIMES = ();

sub is_prime {
	my $v = shift;

	return 1 if defined $PRIMES{$v};

	my @x = grep { factor( $v, $_ ) } 1..$v;

	if( ( scalar @x == 2 ) and ( $x[0] == 1 ) and ( $x[1] == $v ) ){
		$PRIMES{$v}++;
		return 1;
	}
	return 0;
}

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
