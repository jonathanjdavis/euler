#!/usr/bin/perl
use strict;

my $sum = 0;

$sum += $_ for grep { ( $_ % 3 == 0 || $_ % 5 == 0 ) } 1..999;

print "$sum\n";
