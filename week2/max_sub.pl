#!/usr/bin/perl
use strict;
use warnings;

# write a subroutine that takes an array (of numbers) and returns the largest value in it
# your subroutine should be able to handle any length of array

my @array = (1,2);

my $answer = max(@array);

print $answer, "\n";


sub max {
    my @numbers = @_;
    
    if (scalar(@numbers) > 0) {
        my $max = $numbers[0];    
        foreach (@numbers) {
            if ($_ > $max) {
                $max = $_;
            }
        }
        return $max;
    } else {
        return "Cannot pass an empty array on the function.";
    }
}

# write a subroutine that takes a scalar (number) and an array, and returns whether the number is in the array. call this sub "find"
my @arguments = @ARGV;
print find(@arguments), "\n";

sub find {
    my $answer = 0;
    my @array = @_;
    my $scalar = shift @array;

    foreach (@array) {
        if ($_ eq $scalar) {
            $answer = 1;
        }
    }
    
    return $answer;
}