#!perl -T
use 5.008;
use strict;
no strict 'subs';
use warnings FATAL => 'all';
use Test::More tests => 12;

BEGIN {
    use_ok('Common::CodingTools', qw(:functions)) || print "Bail out! Can't load Common::CodingTools qw(:functions)!\n";
}

my $test = '   test   ';
ok(slurp_file('README.md') ne '', 'slurp_file');
ok(not(defined slurp_file('missing.md')), 'slurp_file on missing file');
ok(ltrim($test) eq 'test   ', 'ltrim > "' . $test . '" to "' . ltrim($test) . '"');
ok(rtrim($test) eq '   test', 'rtrim > "' . $test . '" to "' . rtrim($test) . '"');
ok(trim($test) eq 'test', 'trim > "' . $test . '" to "' . trim($test) . '"');

my $tf = 'my super duper title and it is cool';
ok(tfirst($tf) eq 'My Super Duper Title and It Is Cool', 'tfirst > "' . $tf . '" to "' . tfirst($tf) . '"');

ok(uc_lc('howdy there', 1) eq 'HoWdY tHeRe', 'uc_lc (upper first) > ' . uc_lc('howdy there',1));
ok(uc_lc('howdy there', 0) eq 'hOwDy ThErE', 'uc_lc (lower first) > ' . uc_lc('howdy there',0));

ok(center('centered',20) eq '      centered      ', 'center > "centered" to "' . center('centered',20) . '"');

my @array = (qw(dog apple zoo mountain));
my @schwartz = schwartzian_sort(@array);
ok(join(' ',@schwartz) eq 'apple dog mountain zoo', 'schwartzian sort (array) > (' . join(', ',@array) . ') to (' . join(', ',@schwartz) . ')');

my $sb = schwartzian_sort(\@array);
ok(join(' ',@{$sb}) eq 'apple dog mountain zoo', 'schwartzian sort (reference) > [' . join(', ', @array) . '] to [' . join(', ',@{$sb}) . ']');
