#!/usr/bin/perl
use strict;

sub divisible {
	my $n = shift;
	my $i = shift;

	my $x = $i / $n;

	#$x =~ /^\d+$/;
	return ($x == int( $x ));
}

sub divisible_by {
	my ( $n, $i ) = @_;

	my @divisibles = grep { divisible( $_ => $n ) } ( 1..$i );
	return scalar @divisibles == $i;
}

sub divisible_by_all_ten {

	my $n = 1;
	my $i = shift || 10;

	N: while( $n ){
		last N if divisible_by( $n, $i );
		$n++;
	}

	return $n;
}

my $ten = divisible_by_all_ten();

while( 1 ){
	last if divisible_by( $ten => 20 );
	$ten += $ten;
}

print "$ten\n";
