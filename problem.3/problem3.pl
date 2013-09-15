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
		print STDERR "Calculating $v..\n";
		$PRIMES{$v}++;
		return 1;
	}
	return 0;
}

sub f {
	my $factor = 0;

	print "Factoring " . join( ", ", @_ ) . "\n";
	$factor *= $_ for @_;
	return $factor;
}

sub prime_factor {
	my $x = shift;

	my $n = 1;
	my @primes = ( 1 );

	until( f( @primes ) == $x ){
		push( @primes, $n ) if is_prime( $n );
		$n++;
		use Data::Dumper;
		print Dumper( \@primes ) . "\n";
	}
}

prime_factor 13195;
