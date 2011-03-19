# -*-cperl-*-

use strict;
use Test::More tests => 3;

BEGIN { use_ok( "Starlink::HDSPACK" ) };

Starlink::HDSPACK::error_handler( sub { ok(scalar(@_), "Triggered error callback" )});

my $retval = Starlink::HDSPACK::set_hdsobj("aaaaaaaaaaaaaaaaaaaaa",1);

ok(!$retval, "Got bad status from HDSPACK call");
