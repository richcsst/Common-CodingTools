#!perl -T
use 5.008;
use strict;
use warnings FATAL => 'all';
use Test::More;

plan tests => 10;

BEGIN {
    use_ok('Common::CodingTools', qw(:functions)) || print "Bail out! Can't load Common::CodingTools qw(:functions)!\n";
}

ok(slurp_file('README') ne '', 'slurp_file');
ok(ltrim('  test') eq 'test', 'ltrim');
ok(rtrim('test  ') eq 'test', 'rtrim');
ok(trim('  test  ') eq 'test', 'trim');
ok(tfirst('my super duper title and it is cool') eq 'My Super Duper Title and It Is Cool', 'tfirst');
ok(uc_lc('howdy there',1) eq 'HoWdY tHeRe', 'uc_lc (upper first)');
ok(uc_lc('howdy there',0) eq 'hOwDy ThErE', 'uc_lc (lower first)');
ok(text_center('centered') eq '      centered      ', 'text_center');
ok(join(' ',schwartzian_sort('dog','apple', 'zoo', 'mountain')) eq 'apple dog mountain zoo', 'schwartzian sort');
