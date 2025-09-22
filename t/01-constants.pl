#!perl -T
use 5.008;
use strict;
use warnings FATAL => 'all';
use Test::More;

plan tests => 22;

BEGIN {
    use_ok('Common::CodingTools', qw( :constants )) || print "Bail out! Can't load Common::CodingTools qw(:constants)!\n";
}

ok(TRUE,       'TRUE');
ok(!FALSE,     'FALSE');
ok(ON,         'ON');
ok(!OFF,       'OFF');
ok(ACTIVE,     'ACTIVE');
ok(!INACTIVE,  'INACTIVE');
ok(HEALTHY,    'HEALTHY');
ok(!UNHEALTHY, 'UNHEALTHY');
ok(EXPIRED,    'EXPIRED');
ok(!UNEXPIRED, 'UNEXPIRED');
ok(CLEAN,      'CLEAN');
ok(!DIRTY,     'DIRTY');
ok(HAPPY,      'HAPPY');
ok(!SAD,       'SAD');
ok(!ANGRY,     'ANGRY');
ok(SUCCESS,    'SUCCESS');
ok(SUCCESSFUL, 'SUCCESSFUL');
ok(SUCCEEDED,  'SUCCEEDED');
ok(!FAILURE,   'FAILURE');
ok(!FAILED,    'FAILED');
ok(!FAIL,      'FAIL');
