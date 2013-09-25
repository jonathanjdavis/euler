#!/usr/bin/perl
use strict;
use lib '../lib';
use Euler::Prime::Modulus '+cache';

my @primes = ();
my $n = 2;

P: while( scalar( @primes ) < 10002 ){
	push( @primes, $n ) if is_prime( $n );
	$n++;	
}

print $primes[10000] . "\n";
