#!/usr/bin/perl
use strict;
use Data::Dumper;

sub d {
	my $n = shift;

	my @divisors = grep { $n % $_ == 0 } ( 1..$n );

	return @divisors;
}

sub t {
	my $n = shift;
	my $sum = 0;

	$sum += $_ for 1..$n;

	return $sum;
}

my $ndivisors = 0;
my $n = 1;

my $MAX = 500;

while( $ndivisors <= $MAX ){
	my $triangle = t( $n );
	my @d = d( $triangle );
	$ndivisors = scalar @d;

	print "$n => $ndivisors => [ " . join( ", ", @d ) . " ]\n"
		if $ENV{VERBOSE};

	last if $ndivisors > $MAX;

	$n++;
}

print t($n) . " => $ndivisors\n";

__END__

my @triangles = map { t( $_ ) } ( 1..20 );

for( @triangles ){

	my @d = d( $_ );

	print "$_ => " . Dumper ( \@d ) . "\n";
}
