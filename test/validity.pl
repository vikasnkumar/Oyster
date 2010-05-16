#!/usr/bin/perl -w

use strict;
use warnings;
use Oyster;
use Data::Dumper;

my $oyster = Oyster->new;
print Dumper($oyster) if defined $oyster;
