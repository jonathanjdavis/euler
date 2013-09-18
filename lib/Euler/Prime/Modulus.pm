package Euler::Prime::Modulus;

my %PRIMES;

sub load_cache {
	my $filename = shift;

	print STDERR "Loading primes cache from $filename\n";

	open my $fd, "<$filename";
	while( <$fd> ){
		chomp;
		$PRIMES{$_}++;
	}
}

sub is_prime
{
	my $m = shift @_;
	my $i = 2;

	return 1 if defined $PRIMES{$m};

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

	my ( $package, $args ) = @_;
	print STDERR "Importing with args [$args]\n";
	if( $args =~ /\\+cache/ ){
		my $cachefilename = '/tmp/primes.txt';
		if( $args =~ /\\+cache\s+(\S+)/ and -f $1 ){
			my $cachefilename = $1;
		}
		load_cache( $cachefilename );
	}
}


1;
