# Do not edit this file - Generated by MiniPerl6 3.0
use v5;
use strict;
use MiniPerl6::Perl5::Runtime;
use MiniPerl6::Perl5::Match;
{
package Test;
sub new { shift; bless { @_ }, "Test" }
my  $num_of_tests_run;
my  $num_of_tests_failed;
my  $num_of_tests_badpass;
my  $num_of_tests_planned;
my  $testing_started;
sub plan { my $List__ = \@_; my $number_of_tests; do {  ($number_of_tests = $List__->[0]); [$number_of_tests] }; ($testing_started = 1); ($num_of_tests_planned = $number_of_tests); Main::say('1..' . $number_of_tests) };
sub ok { my $List__ = \@_; my $cond; my $desc; my $todo; my $depends; do {  ($cond = $List__->[0]);  ($desc = $List__->[1]);  ($todo = $List__->[2]);  ($depends = $List__->[3]); [$cond, $desc, $todo, $depends] }; Test::proclaim($cond, 'ok! ' . $desc, $todo, $depends) };
sub is { my $List__ = \@_; my $got; my $expected; my $desc; my $todo; my $depends; do {  ($got = $List__->[0]);  ($expected = $List__->[1]);  ($desc = $List__->[2]);  ($todo = $List__->[3]);  ($depends = $List__->[4]); [$got, $expected, $desc, $todo, $depends] }; (my  $test = ($got eq $expected)); Test::proclaim($test, 'is! ' . $desc, $todo, $got, $expected, $depends) };
sub is_deeply { my $List__ = \@_; my $got; my $expected; my $desc; my $todo; my $depends; do {  ($got = $List__->[0]);  ($expected = $List__->[1]);  ($desc = $List__->[2]);  ($todo = $List__->[3]);  ($depends = $List__->[4]); [$got, $expected, $desc, $todo, $depends] }; (my  $got_perl = Main::perl($got, )); (my  $expected_perl = Main::perl($expected, )); (my  $test = ($got_perl eq $expected_perl)); Test::proclaim($test, 'is deeply! ' . $desc, $todo, $got_perl, $expected_perl, $depends) };
sub isnt { my $List__ = \@_; my $got; my $expected; my $desc; my $todo; my $depends; do {  ($got = $List__->[0]);  ($expected = $List__->[1]);  ($desc = $List__->[2]);  ($todo = $List__->[3]);  ($depends = $List__->[4]); [$got, $expected, $desc, $todo, $depends] }; (my  $test = (($got eq $expected) ? 0 : 1)); Test::proclaim($test, 'isnt! ' . $desc, $todo, $got, $expected, $depends, { 'negate' => 1, }) };
sub cmp_ok { my $List__ = \@_; my $got; my $Code_compare_func; my $expected; my $desc; my $todo; my $depends; do {  ($got = $List__->[0]);  ($Code_compare_func = $List__->[1]);  ($expected = $List__->[2]);  ($desc = $List__->[3]);  ($todo = $List__->[4]);  ($depends = $List__->[5]); [$got, $Code_compare_func, $expected, $desc, $todo, $depends] }; Main::say('### Test::cmp_ok not implemented') };
sub like { my $List__ = \@_; do { [] }; Main::say('### Test::like not implemented') };
sub unlike { my $List__ = \@_; do { [] }; Main::say('### Test::unlike not implemented') };
sub eval_dies_ok { my $List__ = \@_; do { [] }; Main::say('### Test::eval_dies_ok not implemented') };
sub isa_ok { my $List__ = \@_; do { [] }; Main::say('### Test::isa_ok not implemented') };
sub use_ok { my $List__ = \@_; do { [] }; Main::say('### Test::use_ok not implemented') };
sub throws_ok { my $List__ = \@_; do { [] }; Main::say('### Test::throws_ok not implemented') };
sub dies_ok { my $List__ = \@_; do { [] }; Main::say('### Test::dies_ok not implemented') };
sub lives_ok { my $List__ = \@_; do { [] }; Main::say('### Test::lives_ok not implemented') };
sub skip { my $List__ = \@_; my $reason; my $depends; do {  ($reason = $List__->[0]);  ($depends = $List__->[1]); [$reason, $depends] }; Test::proclaim(1, '', 'skip ' . $reason, $depends) };
sub pass { my $List__ = \@_; my $desc; do {  ($desc = $List__->[0]); [$desc] }; Test::proclaim(1, 'pass! ' . $desc) };
sub flunk { my $List__ = \@_; my $desc; my $todo; my $depends; do {  ($desc = $List__->[0]);  ($todo = $List__->[1]);  ($depends = $List__->[2]); [$desc, $todo, $depends] }; Test::proclaim(0, 'flunk! ' . $desc, $todo, $depends) };
sub proclaim { my $List__ = \@_; my $cond; my $desc; my $todo; my $got; my $expected; my $depends; my $negate; do {  ($cond = $List__->[0]);  ($desc = $List__->[1]);  ($todo = $List__->[2]);  ($got = $List__->[3]);  ($expected = $List__->[4]);  ($depends = $List__->[5]);  ($negate = $List__->[6]); [$cond, $desc, $todo, $got, $expected, $depends, $negate] }; ($testing_started = 1); ($num_of_tests_run = ($num_of_tests_run + 1)); do { if ($cond) { Main::say('ok ', $num_of_tests_run) } else { Main::say('not ok ', $num_of_tests_run);Test::report_failure($todo, $got, $expected, $negate) } }; return($cond) };
sub report_failure { my $List__ = \@_; my $todo; my $got; my $expected; my $negate; do {  ($todo = $List__->[0]);  ($got = $List__->[1]);  ($expected = $List__->[2]);  ($negate = $List__->[3]); [$todo, $got, $expected, $negate] }; Main::say('### Test::report_failure not implemented') };
sub test_ends { my $List__ = \@_; do { [] }; do { if ($testing_started) {  } else { return((undef)) } }; do { if ($num_of_tests_planned) {  } else { Main::say('1..' . $num_of_tests_run) } }; do { if (($num_of_tests_planned != $num_of_tests_run)) { Main::say('# Looks like you planned ' . $num_of_tests_planned . ' tests, but ran ' . $num_of_tests_run) } else {  } }; do { if ($num_of_tests_failed) { Main::say('# Looks like you failed ' . $num_of_tests_failed . ' tests of ' . $num_of_tests_run) } else {  } }; ($num_of_tests_run = 0); ($num_of_tests_failed = 0); ($num_of_tests_planned = 0); ($testing_started = 0) }

}
1;
