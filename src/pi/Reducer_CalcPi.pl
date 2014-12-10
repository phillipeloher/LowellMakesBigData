#!/usr/bin/perl
use strict;
use warnings;

# REDUCER
# Demo by Phillipe Loher
# For Lowell Makes education session

my $tally_in_circle = 0;
my $tally_total_thrown = 0;

while (my $readline = <STDIN>)
{
	chomp $readline;
	my @splitline = split (/\t/, $readline);
	
	$tally_in_circle    += $splitline[0];
	$tally_total_thrown += $splitline[1];

   printf ("Pi estimate via monte-carlo is, individual mapper (%ld): %.100f\n", $splitline[1], 4 * ($splitline[0]/$splitline[1]));
}

printf ("\nUsing all mapper data:\nPi estimate via monte-carlo is, all mappers: %.100f\n", 4 * ($tally_in_circle/$tally_total_thrown));
