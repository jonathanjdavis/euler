#!/usr/bin/perl
use strict;
use Data::Dumper;

sub d {
	my $n = shift;

	my $ndivisors = 0;

	my $sqrt = sqrt( $n );

	for( my $i = 1; $i <= $sqrt; $i++ ){
		$ndivisors += 2 if ( $n % $i == 0 );
	}

	$ndivisors-- if ( $sqrt * $sqrt == $n );

	print "$n => $ndivisors\n";

	return $ndivisors;
}

sub t {
	my $n = shift;
	my $sum = 0;

	$sum += $_ for 1..$n;

	return $sum;
}

my $ndivisors = 0;
my $number = 1;
my $i = 1;

my $MAX = 500;

while( d( $number ) < $MAX ){
	$number += $i;
	$i++;
}

print "$number\n";

__END__

my @triangles = map { t( $_ ) } ( 1..20 );

for( @triangles ){

	my @d = d( $_ );

	print "$_ => " . Dumper ( \@d ) . "\n";
}
