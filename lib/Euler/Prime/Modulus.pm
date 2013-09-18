package Euler::Prime::Modulus;

sub is_prime
{
	my $m = shift @_;
	my $i = 2;
	while ($i < $m)
	{
		return 0 unless ($m % $i++);
	}
	return 1;
}

sub import {
        no strict 'refs';
        my ( $package, $file, $line ) = caller;

        for( qw(is_prime)){
                *{$package . "::$_"} = \&$_;
        }
}


1;
