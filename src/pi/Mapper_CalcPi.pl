#!/usr/bin/perl
use strict;
use warnings;

# MAPPER
# Demo by Phillipe Loher
# For Lowell Makes education session

my $PERMAPPER_NUM_ITERATIONS = 1000;
my $thrown_in_circle = 0;

if (defined ($ARGV[0])) # allow mapper argument to override the number of iterations
{
	$PERMAPPER_NUM_ITERATIONS = $ARGV[0];
}

for (my $i = 0; $i < $PERMAPPER_NUM_ITERATIONS; $i++)
{
	# throw the dart in a quarter of a unit circle
	my $a = rand (1);
	my $b = rand (1);

   # see if it lands inside or outside the circle
	if ($a**2 + $b**2 <= 1)
	{
		$thrown_in_circle++;
	}
}

# output results to intermediate
printf ("%ld\t%ld\n", $thrown_in_circle, $PERMAPPER_NUM_ITERATIONS);
