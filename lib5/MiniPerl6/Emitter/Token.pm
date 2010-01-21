# Do not edit this file - Generated by MiniPerl6 3.0
use v5;
use strict;
use MiniPerl6::Perl5::Runtime;
use MiniPerl6::Perl5::Match;
{
package Rul;
sub new { shift; bless { @_ }, "Rul" }
sub constant { my $List__ = \@_; my $str; do {  ($str = $List__->[0]); [$str] }; (my  $len = Main::chars($str, )); do { if (($str eq '\\')) { ($str = '\\\\') } else {  } }; do { if (($str eq '\'')) { ($str = '\\\'') } else {  } }; do { if ($len) { '( ( \'' . $str . '\' eq substr( $str, $MATCH.to, ' . $len . ')) ' . '  ?? (1 + ( $MATCH.to := ' . $len . ' + $MATCH.to ))' . '  !! false ' . ')' } else { return('1') } } }

}
{
package Rul::Quantifier;
sub new { shift; bless { @_ }, "Rul::Quantifier" }
sub term { @_ == 1 ? ( $_[0]->{term} ) : ( $_[0]->{term} = $_[1] ) };
sub quant { @_ == 1 ? ( $_[0]->{quant} ) : ( $_[0]->{quant} = $_[1] ) };
sub greedy { @_ == 1 ? ( $_[0]->{greedy} ) : ( $_[0]->{greedy} = $_[1] ) };
sub ws1 { @_ == 1 ? ( $_[0]->{ws1} ) : ( $_[0]->{ws1} = $_[1] ) };
sub ws2 { @_ == 1 ? ( $_[0]->{ws2} ) : ( $_[0]->{ws2} = $_[1] ) };
sub ws3 { @_ == 1 ? ( $_[0]->{ws3} ) : ( $_[0]->{ws3} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; $self->{term}->emit() }

}
{
package Rul::Or;
sub new { shift; bless { @_ }, "Rul::Or" }
sub or_list { @_ == 1 ? ( $_[0]->{or_list} ) : ( $_[0]->{or_list} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; 'do { ' . 'my $pos1 := $MATCH.to; do{ ' . Main::join([ map { $_->emit() } @{ $self->{or_list} } ], '} || do { $MATCH.to := $pos1; ') . '} }' }

}
{
package Rul::Concat;
sub new { shift; bless { @_ }, "Rul::Concat" }
sub concat { @_ == 1 ? ( $_[0]->{concat} ) : ( $_[0]->{concat} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; '(' . Main::join([ map { $_->emit() } @{ $self->{concat} } ], ' && ') . ')' }

}
{
package Rul::Subrule;
sub new { shift; bless { @_ }, "Rul::Subrule" }
sub metasyntax { @_ == 1 ? ( $_[0]->{metasyntax} ) : ( $_[0]->{metasyntax} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; (my  $meth = ((1 + index($self->{metasyntax}, '.')) ? $self->{metasyntax} : '$grammar.' . $self->{metasyntax})); 'do { ' . 'my $m2 := ' . $meth . '($str, $MATCH.to); ' . 'if $m2 { $MATCH.to := $m2.to; $MATCH{\'' . $self->{metasyntax} . '\'} := $m2; 1 } else { false } ' . '}' }

}
{
package Rul::SubruleNoCapture;
sub new { shift; bless { @_ }, "Rul::SubruleNoCapture" }
sub metasyntax { @_ == 1 ? ( $_[0]->{metasyntax} ) : ( $_[0]->{metasyntax} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; (my  $meth = ((1 + index($self->{metasyntax}, '.')) ? $self->{metasyntax} : '$grammar.' . $self->{metasyntax})); 'do { ' . 'my $m2 := ' . $meth . '($str, $MATCH.to); ' . 'if $m2 { $MATCH.to := $m2.to; 1 } else { false } ' . '}' }

}
{
package Rul::Var;
sub new { shift; bless { @_ }, "Rul::Var" }
sub sigil { @_ == 1 ? ( $_[0]->{sigil} ) : ( $_[0]->{sigil} = $_[1] ) };
sub twigil { @_ == 1 ? ( $_[0]->{twigil} ) : ( $_[0]->{twigil} = $_[1] ) };
sub name { @_ == 1 ? ( $_[0]->{name} ) : ( $_[0]->{name} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; (my  $table = { '$' => '$','@' => '$List_','%' => '$Hash_','&' => '$Code_', }); $table->{$self->{sigil}} . $self->{name} }

}
{
package Rul::Constant;
sub new { shift; bless { @_ }, "Rul::Constant" }
sub constant { @_ == 1 ? ( $_[0]->{constant} ) : ( $_[0]->{constant} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; (my  $str = $self->{constant}); Rul::constant($str) }

}
{
package Rul::Dot;
sub new { shift; bless { @_ }, "Rul::Dot" }
sub emit { my $self = shift; my $List__ = \@_; do { [] }; '( (\'\' ne substr( $str, $MATCH.to, 1 )) ' . '  ?? (1 + ($MATCH.to := 1 + $MATCH.to ))' . '  !! false ' . ')' }

}
{
package Rul::SpecialChar;
sub new { shift; bless { @_ }, "Rul::SpecialChar" }
sub char { @_ == 1 ? ( $_[0]->{char} ) : ( $_[0]->{char} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; (my  $char = $self->{char}); do { if (($char eq 'n')) { (my  $rul = Rul::SubruleNoCapture->new( 'metasyntax' => 'is_newline', ));($rul = $rul->emit());return($rul) } else {  } }; do { if (($char eq 'N')) { (my  $rul = Rul::SubruleNoCapture->new( 'metasyntax' => 'not_newline', ));($rul = $rul->emit());return($rul) } else {  } }; do { if (($char eq 'd')) { (my  $rul = Rul::SubruleNoCapture->new( 'metasyntax' => 'digit', ));($rul = $rul->emit());return($rul) } else {  } }; do { if (($char eq 's')) { (my  $rul = Rul::SubruleNoCapture->new( 'metasyntax' => 'space', ));($rul = $rul->emit());return($rul) } else {  } }; return(Rul::constant($char)) }

}
{
package Rul::Block;
sub new { shift; bless { @_ }, "Rul::Block" }
sub closure { @_ == 1 ? ( $_[0]->{closure} ) : ( $_[0]->{closure} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; '(do { ' . $self->{closure} . ' } || 1)' }

}
{
package Rul::InterpolateVar;
sub new { shift; bless { @_ }, "Rul::InterpolateVar" }
sub var { @_ == 1 ? ( $_[0]->{var} ) : ( $_[0]->{var} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; Main::say('# TODO: interpolate var ' . $self->{var}->emit() . ''); die() }

}
{
package Rul::NamedCapture;
sub new { shift; bless { @_ }, "Rul::NamedCapture" }
sub rule_exp { @_ == 1 ? ( $_[0]->{rule_exp} ) : ( $_[0]->{rule_exp} = $_[1] ) };
sub capture_ident { @_ == 1 ? ( $_[0]->{capture_ident} ) : ( $_[0]->{capture_ident} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; Main::say('# TODO: named capture ' . $self->{capture_ident} . ' := ' . $self->{rule_exp}->emit() . ''); die() }

}
{
package Rul::Before;
sub new { shift; bless { @_ }, "Rul::Before" }
sub rule_exp { @_ == 1 ? ( $_[0]->{rule_exp} ) : ( $_[0]->{rule_exp} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; 'do { ' . 'my $tmp := $MATCH; ' . '$MATCH := MiniPerl6::Match.new( \'str\' => $str, \'from\' => $tmp.to, \'to\' => $tmp.to, \'bool\' => 1  ); ' . '$MATCH.bool := ' . $self->{rule_exp}->emit() . '; ' . '$tmp.bool := ?$MATCH; ' . '$MATCH := $tmp; ' . '?$MATCH; ' . '}' }

}
{
package Rul::NotBefore;
sub new { shift; bless { @_ }, "Rul::NotBefore" }
sub rule_exp { @_ == 1 ? ( $_[0]->{rule_exp} ) : ( $_[0]->{rule_exp} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; 'do { ' . 'my $tmp := $MATCH; ' . '$MATCH := MiniPerl6::Match.new( \'str\' => $str, \'from\' => $tmp.to, \'to\' => $tmp.to, \'bool\' => 1  ); ' . '$MATCH.bool := ' . $self->{rule_exp}->emit() . '; ' . '$tmp.bool := !$MATCH; ' . '$MATCH := $tmp; ' . '?$MATCH; ' . '}' }

}
{
package Rul::NegateCharClass;
sub new { shift; bless { @_ }, "Rul::NegateCharClass" }
sub chars { @_ == 1 ? ( $_[0]->{chars} ) : ( $_[0]->{chars} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; Main::say('TODO NegateCharClass'); die() }

}
{
package Rul::CharClass;
sub new { shift; bless { @_ }, "Rul::CharClass" }
sub chars { @_ == 1 ? ( $_[0]->{chars} ) : ( $_[0]->{chars} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; Main::say('TODO CharClass'); die() }

}
{
package Rul::Capture;
sub new { shift; bless { @_ }, "Rul::Capture" }
sub rule_exp { @_ == 1 ? ( $_[0]->{rule_exp} ) : ( $_[0]->{rule_exp} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; Main::say('TODO RulCapture'); die() }

}
{
package Rul::CaptureResult;
sub new { shift; bless { @_ }, "Rul::CaptureResult" }
sub rule_exp { @_ == 1 ? ( $_[0]->{rule_exp} ) : ( $_[0]->{rule_exp} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; Main::say('TODO Rul::CaptureResult'); die() }

}
{
package Rul::After;
sub new { shift; bless { @_ }, "Rul::After" }
sub rule_exp { @_ == 1 ? ( $_[0]->{rule_exp} ) : ( $_[0]->{rule_exp} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; Main::say('TODO Rul::After'); die() }

}
1;
