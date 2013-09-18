#!/usr/bin/perl

# a < b < c
#
# a** + b** = c**
#
# a + b + c == 100

sub p {
	my ($a,$b,$c) = @_;

	return( ( ( $a*$a ) + ( $b*$b ) ) == ( $c*$c ) );
}

# first, find all permutations of a + b + c == 100 where a < b < c

for( my $a = 0; $a <= 1000; $a++ ){
  for( my $b = $a+1; $b <= 1000; $b++ ){
    for( my $c = $b+1; $c <= 1000; $c++ ){
      next unless ( $a < $b and $b < $c );
      next unless ( $a + $b + $c == 1000 );
      print "$a,$b,$c\n" if ( ($a*$a) + ($b*$b ) == ( $c*$c) );
      if ( ($a*$a) + ($b*$b ) == ( $c*$c) ){
        my $product = $a * $b * $c;
        print "$product\n";
        exit 0;
      }
    }
  }
}
