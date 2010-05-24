#!/usr/bin/perl -w
#############################################################################
#############################################################################
## Copyright (c) Vikas Naresh Kumar
##
## Permission is hereby granted, free of charge, to any person obtaining
## a copy of this software and associated documentation files (the
## "Software"), to deal in the Software without restriction, including
## without limitation the rights to use, copy, modify, merge, publish,
## distribute, sublicense, and/or sell copies of the Software, and to
## permit persons to whom the Software is furnished to do so, subject to
## the following conditions:
##
## The above copyright notice and this permission notice shall be
## included in all copies or substantial portions of the Software.
##
## THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
## EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
## MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
## NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
## LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
## OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
## WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
##
## Start Date: 16 May 2010
## Author: Vikas Naresh Kumar
#############################################################################
#############################################################################

use strict;
use warnings;
use Oyster;
use Carp;
use Data::Dumper;

croak 'Usage: validate.pl <executable>' if not defined $ARGV[0];
my $oyster = Oyster::Agent->new;
$oyster->compiler('gcc', '3.4.5', '/usr/bin/gcc');
$oyster->compiler({ 'compiler' => 'gcc', 'version' => '123', 'path' =>
		'/usr/bin/gcc'});
print Dumper($oyster) if defined $oyster;
