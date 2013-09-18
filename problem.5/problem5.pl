#!/usr/bin/perl
use strict;

sub divisible_by {
	my ( $n, $max ) = @_;

	$max = 20 unless $max;

	for( my $i = 1; $i < $max; $i++ ){
		return 0 unless ( $n % $i == 0 );
	}
	return 1;
}

# This method is only used for testing
sub divisible_by_all_ten {

	my $n = 1;
	my $i = 10;

	N: while( $n ){
		return $n if divisible_by( $n, $i );
		$n++;
	}

	return $n;
}


sub divisible_by_all_twenty {

	my $n = 1;
	my $i = 20;

	N: while( $n ){
		return $n if divisible_by( $n, $i );
		$n++;
	}

	return $n;
}


my $twenty = divisible_by_all_twenty();

print "$twenty\n";
