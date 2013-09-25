#!/usr/bin/perl
use strict;

use lib '../lib';
use Euler::Prime::Modulus '+cache';

my $MAX = 2000000;

my @primes = ();

for( my $i = 2; $i < $MAX; $i++ ){
	push( @primes, $i ) if is_prime( $i );	
}

my $sum = 0;
$sum += $_ for @primes;

print "$sum\n";
