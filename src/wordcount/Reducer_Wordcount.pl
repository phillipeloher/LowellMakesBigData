#!/usr/bin/perl
use strict;
use warnings;

# REDUCER
# Demo by Phillipe Loher
# For Lowell Makes education session

# create hash that will sum up the word counts
my %aggregate = ();

# read in <key, value> pair from intermediate results generated by the MAPPER
foreach my $input (<STDIN>)
{
   chomp $input;

   # only get the key, throw away the value since we know it's always 1
   my $key = $input;
   $key =~ s/^LongValueSum://;
   $key =~ s/\t.*//;

   # aggregate the counts for that word (key)
   if (!defined ($aggregate{$key}))
   {
      $aggregate{$key} = 1;
   }
   else
   {
      $aggregate{$key} = $aggregate{$key} + 1;
   }
}

# print the count for each word (key)
foreach my $key (keys %aggregate)
{
   printf ("%s\t%ld\n", $key, $aggregate{$key});
}
