#!/usr/bin/perl

sub palindrome {
	my $x = shift;
	my @a = split //, $x;
	my $l = scalar @a;

	if( $l % 2 == 0 ){
		# even
		my $h = ( $l / 2 ) - 1;
		my @A = @a[0..$h];
		my @B = @a[$h+1..$l-1];

		return( join( "", @A ) eq join( "", reverse( @B ) ) );
	} else {
		# Remove the middle value, then call this function again
		my @A = @a[0..$h+1];
		my @B = @a[$h+3..$l-1];

		return palindrome( join( "", @A ) . join( "", @B ) );
	}
}

my $largest = 0;

for( my $x = 100; $x < 1000; $x++ ){
	for( my $y = 100; $y < 1000; $y++ ){
		my $f = $x * $y;
		if( palindrome( "$f" ) ){
			$largest = $f if( $f > $largest );
		}
	}
}

print "$largest\n";


__END__
use Test::More;

ok( palindrome '112211', 'Palindrome' );
ok( palindrome 'AABBAA', 'Palindrome' );
ok(!palindrome 'AABBCC', 'Not Palindrome' );
ok( palindrome 'ABCBA', 'ABCBA' );

done_testing;
