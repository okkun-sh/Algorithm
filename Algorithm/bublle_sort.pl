#!/usr/bin/perl
use warnings;
use strict;
use Data::Dumper;

my $array = [13, 5, 41, 20, 1];

for (my $i = 0; $i < scalar @$array - 1; $i++) {
    for (my $n = 1; $n < scalar @$array; $n++) {
        if (@$array[$n] < @$array[$n-1]) {
            my $tmp       = @$array[$n-1];
            @$array[$n-1] = @$array[$n];
            @$array[$n]   = $tmp;
        }
    }
}

warn Dumper $array;

1;