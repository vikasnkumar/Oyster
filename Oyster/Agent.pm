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

####
#Oyster is a pure Object Oriented Perl class.
####

package Oyster::Agent;
use warnings;
use strict;

# not importing symbols specifically to avoid conflicts in namespace.
use Carp ();
use Data::Dumper;

our $VERSION = 0.001;

sub AUTOLOAD {
	our $AUTOLOAD;
	Carp::carp "WARN: $AUTOLOAD function does not exist.\n";
	return undef;
}

sub new {
	my $this = shift;
	my $class = ref($this) || $this;
	return bless({}, $class);
}

sub compiler {
	my $this = shift;
	my $arg = shift;
	print "hash\n" if ref($arg) eq 'HASH';
	my ($compiler, $version, $path, $language) = @_;

	unless (ref($this) eq __PACKAGE__) {
		Carp::croak "FATAL: Oyster has not been created ";
	}

	$this->{compiler} = {
		name => $compiler,
		path => $path,
		version => $version,
		language => $language,
	};
	return 1;
}

sub DESTROY {
}

# return true if the package is successfully loaded.
1;
