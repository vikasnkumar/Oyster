#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'Oyster' ) || print "Bail out!
";
}

diag( "Testing Oyster $Oyster::VERSION, Perl $], $^X" );
