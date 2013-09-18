package Euler::Prime::Regex;

sub is_prime {
	$_ = shift;
	(1x$_) =~ /^1?$|^(11+?)\1+$/;
}

sub import {
        no strict 'refs';
        my ( $package, $file, $line ) = caller;

        for( qw(is_prime)){
                *{$package . "::$_"} = \&$_;
        }
}


1;
