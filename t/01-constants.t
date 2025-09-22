#!perl -T

use 5.008;
use strict;
no strict 'subs';
use warnings FATAL => 'all';

use Test::More;

plan tests => 24;

BEGIN {
	use_ok('Common::CodingTools', qw( :constants )) || diag("Bail out! Can't load Common::CodingTools qw(:constants)");
}

ok(TRUE       == 1, 'TRUE');
ok(FALSE      == 0, 'FALSE');
ok(ON         == 1, 'ON');
ok(OFF        == 0, 'OFF');
ok(ACTIVE     == 1, 'ACTIVE');
ok(INACTIVE   == 0, 'INACTIVE');
ok(HEALTHY    == 1, 'HEALTHY');
ok(UNHEALTHY  == 0, 'UNHEALTHY');
ok(EXPIRED    == 1, 'EXPIRED');
ok(NOTEXPIRED == 0, 'NOTEXPIRED');
ok(CLEAN      == 1, 'CLEAN');
ok(DIRTY      == 0, 'DIRTY');
ok(HAPPY      == 1, 'HAPPY');
ok(UNHAPPY    == 0, 'UNHAPPY');
ok(SAD        == 0, 'SAD');
ok(ANGRY      == 0, 'ANGRY');
ok(SUCCESS    == 1, 'SUCCESS');
ok(SUCCESSFUL == 1, 'SUCCESSFUL');
ok(SUCCEEDED  == 1, 'SUCCEEDED');
ok(FAILURE    == 0, 'FAILURE');
ok(FAILED     == 0, 'FAILED');
ok(FAIL       == 0, 'FAIL');
ok((4 * atan2(1, 1)) == PI, 'PI > ' . PI);
