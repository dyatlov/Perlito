# Do not edit this file - Generated by MiniPerl6 3.0
use v5;
use strict;
use MiniPerl6::Perl5::Runtime;
use MiniPerl6::Perl5::Match;
{
package CompUnit;
sub new { shift; bless { @_ }, "CompUnit" }
sub name { @_ == 1 ? ( $_[0]->{name} ) : ( $_[0]->{name} = $_[1] ) };
sub attributes { @_ == 1 ? ( $_[0]->{attributes} ) : ( $_[0]->{attributes} = $_[1] ) };
sub methods { @_ == 1 ? ( $_[0]->{methods} ) : ( $_[0]->{methods} = $_[1] ) };
sub body { @_ == 1 ? ( $_[0]->{body} ) : ( $_[0]->{body} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; (my  $a = $self->{body}); my  $item; (my  $in = ''); (my  $s = ''); (my  $node = 0); (my  $s = $s . $in . '"past" => PMC \'Past::Block\' {' . Main::newline()); (my  $in = '  '); (my  $s = $s . $in . '<mydecl> => Hash {' . Main::newline()); (my  $in = '      '); (my  $s = $s . $in . '"$_" => 1' . Main::newline()); (my  $in = '  '); (my  $s = $s . $in . '}' . Main::newline()); (my  $s = $s . $in . '<source> => ""' . Main::newline() . $in . '<pos> => 0' . Main::newline() . $in . '<name> => "anon"' . Main::newline()); (my  $s = $s . $in . '<symtable> => Hash {' . Main::newline()); (my  $in = '      '); (my  $s = $s . $in . '"$!" => Hash {' . Main::newline() . $in . '    "scope" => "package"' . Main::newline() . $in . '}' . Main::newline() . $in . '"$/" => Hash {' . Main::newline() . $in . '    "scope" => "lexical"' . Main::newline() . $in . '}' . Main::newline() . $in . '"$_" => Hash {' . Main::newline() . $in . '    "scope" => "lexical"' . Main::newline() . $in . '}' . Main::newline()); (my  $in = '  '); (my  $s = $s . $in . '}' . Main::newline()); (my  $s = $s . $in . '[' . $node . '] => \'PMC::Past::Var\' {' . Main::newline() . $in . '    <name> => "$_"' . Main::newline() . $in . '    <scope> => "lexical"' . Main::newline() . $in . '    <ismy> => 1' . Main::newline() . $in . '}' . Main::newline()); ($node = ($node + 1)); (my  $s = $s . $in . '[' . $node . '] => \'PMC::Past::Var\' {' . Main::newline() . $in . '    <name> => "$/"' . Main::newline() . $in . '    <scope> => "lexical"' . Main::newline() . $in . '    <ismy> => 1' . Main::newline() . $in . '}' . Main::newline()); ($node = ($node + 1)); do { for my $item ( @{$a} ) { do { if ((Main::isa($item, 'Decl') && ($item->decl() ne 'has'))) { ($s = $s . $item->emit()) } else {  } } } }; do { for my $item ( @{$a} ) { do { if ((Main::isa($item, 'Sub') || Main::isa($item, 'Method'))) { ($s = $s . $item->emit()) } else {  } } } }; do { for my $item ( @{$a} ) { do { if ((Main::isa($item, 'Decl') && ($item->decl() eq 'has'))) { (my  $name = $item->var()->name());($s = $s . '.sub ' . Main::quote() . $name . Main::quote() . ' :method' . Main::newline() . '  .param pmc val      :optional' . Main::newline() . '  .param int has_val  :opt_flag' . Main::newline() . '  unless has_val goto ifelse' . Main::newline() . '  setattribute self, ' . Main::quote() . $name . Main::quote() . ', val' . Main::newline() . '  goto ifend' . Main::newline() . 'ifelse:' . Main::newline() . '  val = getattribute self, ' . Main::quote() . $name . Main::quote() . Main::newline() . 'ifend:' . Main::newline() . '  .return(val)' . Main::newline() . '.end' . Main::newline() . Main::newline()) } else {  } } } }; ($s = $s . '.sub _ :anon :load :init :outer(' . Main::quote() . '_class_vars_' . Main::quote() . ')' . Main::newline() . '  .local pmc self' . Main::newline() . '  newclass self, ' . Main::quote() . $self->{name} . Main::quote() . Main::newline()); do { for my $item ( @{$a} ) { do { if ((Main::isa($item, 'Decl') && ($item->decl() eq 'has'))) { ($s = $s . $item->emit()) } else {  } };do { if ((Main::isa($item, 'Decl') || (Main::isa($item, 'Sub') || Main::isa($item, 'Method')))) {  } else { ($s = $s . $item->emit()) } } } }; ($s = $s . '}' . Main::newline()); return($s) }

}
{
package Val::Int;
sub new { shift; bless { @_ }, "Val::Int" }
sub int { @_ == 1 ? ( $_[0]->{int} ) : ( $_[0]->{int} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; '[0] => PMC \'PAST::Val\'  {' . Main::newline() . '  <vtype> => ".Integer"' . Main::newline() . '  <name> => ' . $self->{int} . Main::newline() . '}' . Main::newline() }

}
{
package Val::Bit;
sub new { shift; bless { @_ }, "Val::Bit" }
sub bit { @_ == 1 ? ( $_[0]->{bit} ) : ( $_[0]->{bit} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; '[0] => PMC \'PAST::Val\'  {' . Main::newline() . '  <vtype> => ".Integer"' . Main::newline() . '  <name> => ' . $self->{bit} . Main::newline() . '}' . Main::newline() }

}
{
package Val::Num;
sub new { shift; bless { @_ }, "Val::Num" }
sub num { @_ == 1 ? ( $_[0]->{num} ) : ( $_[0]->{num} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; '[0] => PMC \'PAST::Val\'  {' . Main::newline() . '  <vtype> => ".Float"' . Main::newline() . '  <name> => ' . $self->{num} . Main::newline() . '}' . Main::newline() }

}
{
package Val::Buf;
sub new { shift; bless { @_ }, "Val::Buf" }
sub buf { @_ == 1 ? ( $_[0]->{buf} ) : ( $_[0]->{buf} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; '[0] => PMC \'PAST::Val\'  {' . Main::newline() . '  <vtype> => ".String"' . Main::newline() . '  <name> => ' . Main::quote() . $self->{buf} . Main::quote() . Main::newline() . '}' . Main::newline() }

}
{
package Val::Undef;
sub new { shift; bless { @_ }, "Val::Undef" }
sub emit { my $self = shift; my $List__ = \@_; do { [] }; die('Val::Undef - not yet possible'); '[0] => PMC \'PAST::Op\'  {' . Main::newline() . '  <pasttype> => \'inline\'' . Main::newline() . '  <inline> => \'%r = new .Undef\'' . Main::newline() . '}' . Main::newline() }

}
{
package Val::Object;
sub new { shift; bless { @_ }, "Val::Object" }
sub class { @_ == 1 ? ( $_[0]->{class} ) : ( $_[0]->{class} = $_[1] ) };
sub fields { @_ == 1 ? ( $_[0]->{fields} ) : ( $_[0]->{fields} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; die('Val::Object - not used yet') }

}
{
package Lit::Seq;
sub new { shift; bless { @_ }, "Lit::Seq" }
sub seq { @_ == 1 ? ( $_[0]->{seq} ) : ( $_[0]->{seq} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; die('Lit::Seq - not used yet') }

}
{
package Lit::Array;
sub new { shift; bless { @_ }, "Lit::Array" }
sub array { @_ == 1 ? ( $_[0]->{array} ) : ( $_[0]->{array} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; (my  $a = $self->{array}); my  $item; (my  $s = '  save $P1' . Main::newline() . '  $P1 = new .ResizablePMCArray' . Main::newline()); do { for my $item ( @{$a} ) { ($s = $s . $item->emit());($s = $s . '  push $P1, $P0' . Main->newline()) } }; (my  $s = $s . '  $P0 = $P1' . Main::newline() . '  restore $P1' . Main::newline()); return($s) }

}
{
package Lit::Hash;
sub new { shift; bless { @_ }, "Lit::Hash" }
sub hash { @_ == 1 ? ( $_[0]->{hash} ) : ( $_[0]->{hash} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; (my  $a = $self->{hash}); my  $item; (my  $s = '  save $P1' . Main::newline() . '  save $P2' . Main::newline() . '  $P1 = new .Hash' . Main::newline()); do { for my $item ( @{$a} ) { ($s = $s . $item->[0]->emit());($s = $s . '  $P2 = $P0' . Main->newline());($s = $s . $item->[1]->emit());($s = $s . '  set $P1[$P2], $P0' . Main->newline()) } }; (my  $s = $s . '  $P0 = $P1' . Main::newline() . '  restore $P2' . Main::newline() . '  restore $P1' . Main::newline()); return($s) }

}
{
package Lit::Code;
sub new { shift; bless { @_ }, "Lit::Code" }
sub emit { my $self = shift; my $List__ = \@_; do { [] }; die('Lit::Code - not used yet') }

}
{
package Lit::Object;
sub new { shift; bless { @_ }, "Lit::Object" }
sub class { @_ == 1 ? ( $_[0]->{class} ) : ( $_[0]->{class} = $_[1] ) };
sub fields { @_ == 1 ? ( $_[0]->{fields} ) : ( $_[0]->{fields} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; (my  $fields = $self->{fields}); (my  $str = ''); ($str = '  save $P1' . Main::newline() . '  save $S2' . Main::newline() . '  $P1 = new ' . Main::quote() . $self->{class} . Main::quote() . Main::newline()); do { for my $field ( @{$fields} ) { ($str = $str . $field->[0]->emit() . '  $S2 = $P0' . Main::newline() . $field->[1]->emit() . '  setattribute $P1, $S2, $P0' . Main::newline()) } }; ($str = $str . '  $P0 = $P1' . Main::newline() . '  restore $S2' . Main::newline() . '  restore $P1' . Main::newline()); $str }

}
{
package Index;
sub new { shift; bless { @_ }, "Index" }
sub obj { @_ == 1 ? ( $_[0]->{obj} ) : ( $_[0]->{obj} = $_[1] ) };
sub index { @_ == 1 ? ( $_[0]->{index} ) : ( $_[0]->{index} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; (my  $s = '  save $P1' . Main::newline()); ($s = $s . $self->{obj}->emit()); ($s = $s . '  $P1 = $P0' . Main->newline()); ($s = $s . $self->{index}->emit()); ($s = $s . '  $P0 = $P1[$P0]' . Main->newline()); (my  $s = $s . '  restore $P1' . Main::newline()); return($s) }

}
{
package Lookup;
sub new { shift; bless { @_ }, "Lookup" }
sub obj { @_ == 1 ? ( $_[0]->{obj} ) : ( $_[0]->{obj} = $_[1] ) };
sub index { @_ == 1 ? ( $_[0]->{index} ) : ( $_[0]->{index} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; (my  $s = '  save $P1' . Main::newline()); ($s = $s . $self->{obj}->emit()); ($s = $s . '  $P1 = $P0' . Main->newline()); ($s = $s . $self->{index}->emit()); ($s = $s . '  $P0 = $P1[$P0]' . Main->newline()); (my  $s = $s . '  restore $P1' . Main::newline()); return($s) }

}
{
package Var;
sub new { shift; bless { @_ }, "Var" }
sub sigil { @_ == 1 ? ( $_[0]->{sigil} ) : ( $_[0]->{sigil} = $_[1] ) };
sub twigil { @_ == 1 ? ( $_[0]->{twigil} ) : ( $_[0]->{twigil} = $_[1] ) };
sub name { @_ == 1 ? ( $_[0]->{name} ) : ( $_[0]->{name} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; (($self->{twigil} eq '.') ? '  $P0 = getattribute self, \'' . $self->{name} . '\'' . Main::newline() : '  $P0 = ' . $self->full_name() . ' ' . Main::newline()) };
sub name { my $self = shift; my $List__ = \@_; do { [] }; $self->{name} };
sub full_name { my $self = shift; my $List__ = \@_; do { [] }; (my  $table = { '$' => 'scalar_','@' => 'list_','%' => 'hash_','&' => 'code_', }); (($self->{twigil} eq '.') ? $self->{name} : (($self->{name} eq '/') ? $table->{$self->{sigil}} . 'MATCH' : $table->{$self->{sigil}} . $self->{name})) }

}
{
package Bind;
sub new { shift; bless { @_ }, "Bind" }
sub parameters { @_ == 1 ? ( $_[0]->{parameters} ) : ( $_[0]->{parameters} = $_[1] ) };
sub arguments { @_ == 1 ? ( $_[0]->{arguments} ) : ( $_[0]->{arguments} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; do { if (Main::isa($self->{parameters}, 'Lit::Array')) { (my  $a = $self->{parameters}->array());(my  $b = $self->{arguments}->array());(my  $str = '');(my  $i = 0);do { for my $var ( @{$a} ) { (my  $bind = Bind->new( 'parameters' => $var,'arguments' => $b->[$i], ));($str = $str . $bind->emit());($i = ($i + 1)) } };return($str . $self->{parameters}->emit()) } else {  } }; do { if (Main::isa($self->{parameters}, 'Lit::Hash')) { (my  $a = $self->{parameters}->hash());(my  $b = $self->{arguments}->hash());(my  $str = '');(my  $i = 0);my  $arg;do { for my $var ( @{$a} ) { ($arg = Val::Undef->new(  ));do { for my $var2 ( @{$b} ) { do { if (($var2->[0]->buf() eq $var->[0]->buf())) { ($arg = $var2->[1]) } else {  } } } };(my  $bind = Bind->new( 'parameters' => $var->[1],'arguments' => $arg, ));($str = $str . $bind->emit());($i = ($i + 1)) } };return($str . $self->{parameters}->emit()) } else {  } }; do { if (Main::isa($self->{parameters}, 'Lit::Object')) { (my  $class = $self->{parameters}->class());(my  $a = $self->{parameters}->fields());(my  $b = $self->{arguments});(my  $str = '');do { for my $var ( @{$a} ) { (my  $bind = Bind->new( 'parameters' => $var->[1],'arguments' => Call->new( 'invocant' => $b,'method' => $var->[0]->buf(),'arguments' => [],'hyper' => 0, ), ));($str = $str . $bind->emit()) } };return($str . $self->{parameters}->emit()) } else {  } }; do { if (Main::isa($self->{parameters}, 'Var')) { return($self->{arguments}->emit() . '  ' . $self->{parameters}->full_name() . ' = $P0' . Main::newline()) } else {  } }; do { if (Main::isa($self->{parameters}, 'Decl')) { return($self->{arguments}->emit() . '  .local pmc ' . $self->{parameters}->var()->full_name() . Main::newline() . '  ' . $self->{parameters}->var()->full_name() . ' = $P0' . Main::newline() . '  .lex \'' . $self->{parameters}->var()->full_name() . '\', $P0' . Main::newline()) } else {  } }; do { if (Main::isa($self->{parameters}, 'Lookup')) { (my  $param = $self->{parameters});(my  $obj = $param->obj());(my  $index = $param->index());return($self->{arguments}->emit() . '  save $P2' . Main::newline() . '  $P2 = $P0' . Main::newline() . '  save $P1' . Main::newline() . $obj->emit() . '  $P1 = $P0' . Main::newline() . $index->emit() . '  $P1[$P0] = $P2' . Main::newline() . '  restore $P1' . Main::newline() . '  restore $P2' . Main::newline()) } else {  } }; do { if (Main::isa($self->{parameters}, 'Index')) { (my  $param = $self->{parameters});(my  $obj = $param->obj());(my  $index = $param->index());return($self->{arguments}->emit() . '  save $P2' . Main::newline() . '  $P2 = $P0' . Main::newline() . '  save $P1' . Main::newline() . $obj->emit() . '  $P1 = $P0' . Main::newline() . $index->emit() . '  $P1[$P0] = $P2' . Main::newline() . '  restore $P1' . Main::newline() . '  restore $P2' . Main::newline()) } else {  } }; die('Not implemented binding: ' . $self->{parameters} . Main::newline() . $self->{parameters}->emit()) }

}
{
package Proto;
sub new { shift; bless { @_ }, "Proto" }
sub name { @_ == 1 ? ( $_[0]->{name} ) : ( $_[0]->{name} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; '  $P0 = ' . $self->{name} . Main::newline() }

}
{
package Call;
sub new { shift; bless { @_ }, "Call" }
sub invocant { @_ == 1 ? ( $_[0]->{invocant} ) : ( $_[0]->{invocant} = $_[1] ) };
sub hyper { @_ == 1 ? ( $_[0]->{hyper} ) : ( $_[0]->{hyper} = $_[1] ) };
sub method { @_ == 1 ? ( $_[0]->{method} ) : ( $_[0]->{method} = $_[1] ) };
sub arguments { @_ == 1 ? ( $_[0]->{arguments} ) : ( $_[0]->{arguments} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; do { if ((($self->{method} eq 'perl') || (($self->{method} eq 'yaml') || (($self->{method} eq 'say') || ($self->{method} eq 'join'))))) { do { if ($self->{hyper}) { return('[ map { Main::' . $self->{method} . '( $_, ' . ', ' . Main::join([ map { $_->emit() } @{ $self->{arguments} } ], '') . ')' . ' } @{ ' . $self->{invocant}->emit() . ' } ]') } else { return('Main::' . $self->{method} . '(' . $self->{invocant}->emit() . ', ' . Main::join([ map { $_->emit() } @{ $self->{arguments} } ], '') . ')') } } } else {  } }; (my  $meth = $self->{method}); do { if (($meth eq 'postcircumfix:<( )>')) { ($meth = '') } else {  } }; (my  $call = '->' . $meth . '(' . Main::join([ map { $_->emit() } @{ $self->{arguments} } ], '') . ')'); do { if ($self->{hyper}) { return('[ map { $_' . $call . ' } @{ ' . $self->{invocant}->emit() . ' } ]') } else {  } }; (my  $List_args = $self->{arguments}); (my  $str = ''); (my  $ii = 10); do { for my $arg ( @{$List_args} ) { ($str = $str . '  save $P' . $ii . Main::newline());($ii = ($ii + 1)) } }; (my  $i = 10); do { for my $arg ( @{$List_args} ) { ($str = $str . $arg->emit() . '  $P' . $i . ' = $P0' . Main::newline());($i = ($i + 1)) } }; ($str = $str . $self->{invocant}->emit() . '  $P0 = $P0.' . $meth . '('); ($i = 0); my  $List_p; do { for my $arg ( @{$List_args} ) { ($List_p->[$i] = '$P' . ($i + 10));($i = ($i + 1)) } }; ($str = $str . Main::join($List_p, ', ') . ')' . Main::newline()); do { for my $arg ( @{$List_args} ) { ($ii = ($ii - 1));($str = $str . '  restore $P' . $ii . Main::newline()) } }; return($str) }

}
{
package Apply;
sub new { shift; bless { @_ }, "Apply" }
sub code { @_ == 1 ? ( $_[0]->{code} ) : ( $_[0]->{code} = $_[1] ) };
sub arguments { @_ == 1 ? ( $_[0]->{arguments} ) : ( $_[0]->{arguments} = $_[1] ) };
(my  $label = 100);
sub emit { my $self = shift; my $List__ = \@_; do { [] }; (my  $code = $self->{code}); do { if (($code eq 'die')) { return('  $P0 = new .Exception' . Main::newline() . '  $P0[' . Main::quote() . '_message' . Main::quote() . '] = ' . Main::quote() . 'something broke' . Main::quote() . Main::newline() . '  throw $P0' . Main::newline()) } else {  } }; do { if (($code eq 'say')) { return(Main::join([ map { $_->emit() } @{ $self->{arguments} } ], '  print $P0' . Main::newline()) . '  print $P0' . Main::newline() . '  print ' . Main::quote() . '\\' . 'n' . Main::quote() . Main::newline()) } else {  } }; do { if (($code eq 'print')) { return(Main::join([ map { $_->emit() } @{ $self->{arguments} } ], '  print $P0' . Main::newline()) . '  print $P0' . Main::newline()) } else {  } }; do { if (($code eq 'array')) { return('  # TODO - array() is no-op' . Main::newline()) } else {  } }; do { if (($code eq 'prefix:<~>')) { return($self->{arguments}->[0]->emit() . '  $S0 = $P0' . Main::newline() . '  $P0 = $S0' . Main::newline()) } else {  } }; do { if (($code eq 'prefix:<!>')) { return(If->new( 'cond' => $self->{arguments}->[0],'body' => [Val::Bit->new( 'bit' => 0, )],'otherwise' => [Val::Bit->new( 'bit' => 1, )], )->emit()) } else {  } }; do { if (($code eq 'prefix:<?>')) { return(If->new( 'cond' => $self->{arguments}->[0],'body' => [Val::Bit->new( 'bit' => 1, )],'otherwise' => [Val::Bit->new( 'bit' => 0, )], )->emit()) } else {  } }; do { if (($code eq 'prefix:<$>')) { return('  # TODO - prefix:<$> is no-op' . Main::newline()) } else {  } }; do { if (($code eq 'prefix:<@>')) { return('  # TODO - prefix:<@> is no-op' . Main::newline()) } else {  } }; do { if (($code eq 'prefix:<%>')) { return('  # TODO - prefix:<%> is no-op' . Main::newline()) } else {  } }; do { if (($code eq 'infix:<~>')) { return($self->{arguments}->[0]->emit() . '  $S0 = $P0' . Main::newline() . '  save $S0' . Main::newline() . $self->{arguments}->[1]->emit() . '  $S1 = $P0' . Main::newline() . '  restore $S0' . Main::newline() . '  $S0 = concat $S0, $S1' . Main::newline() . '  $P0 = $S0' . Main::newline()) } else {  } }; do { if (($code eq 'infix:<+>')) { return('  save $P1' . Main::newline() . $self->{arguments}->[0]->emit() . '  $P1 = $P0' . Main::newline() . $self->{arguments}->[1]->emit() . '  $P0 = $P1 + $P0' . Main::newline() . '  restore $P1' . Main::newline()) } else {  } }; do { if (($code eq 'infix:<->')) { return('  save $P1' . Main::newline() . $self->{arguments}->[0]->emit() . '  $P1 = $P0' . Main::newline() . $self->{arguments}->[1]->emit() . '  $P0 = $P1 - $P0' . Main::newline() . '  restore $P1' . Main::newline()) } else {  } }; do { if (($code eq 'infix:<&&>')) { return(If->new( 'cond' => $self->{arguments}->[0],'body' => [$self->{arguments}->[1]],'otherwise' => [], )->emit()) } else {  } }; do { if (($code eq 'infix:<||>')) { return(If->new( 'cond' => $self->{arguments}->[0],'body' => [],'otherwise' => [$self->{arguments}->[1]], )->emit()) } else {  } }; do { if (($code eq 'infix:<eq>')) { ($label = ($label + 1));(my  $id = $label);return($self->{arguments}->[0]->emit() . '  $S0 = $P0' . Main::newline() . '  save $S0' . Main::newline() . $self->{arguments}->[1]->emit() . '  $S1 = $P0' . Main::newline() . '  restore $S0' . Main::newline() . '  if $S0 == $S1 goto eq' . $id . Main::newline() . '  $P0 = 0' . Main::newline() . '  goto eq_end' . $id . Main::newline() . 'eq' . $id . ':' . Main::newline() . '  $P0 = 1' . Main::newline() . 'eq_end' . $id . ':' . Main::newline()) } else {  } }; do { if (($code eq 'infix:<ne>')) { ($label = ($label + 1));(my  $id = $label);return($self->{arguments}->[0]->emit() . '  $S0 = $P0' . Main::newline() . '  save $S0' . Main::newline() . $self->{arguments}->[1]->emit() . '  $S1 = $P0' . Main::newline() . '  restore $S0' . Main::newline() . '  if $S0 == $S1 goto eq' . $id . Main::newline() . '  $P0 = 1' . Main::newline() . '  goto eq_end' . $id . Main::newline() . 'eq' . $id . ':' . Main::newline() . '  $P0 = 0' . Main::newline() . 'eq_end' . $id . ':' . Main::newline()) } else {  } }; do { if (($code eq 'infix:<==>')) { ($label = ($label + 1));(my  $id = $label);return('  save $P1' . Main::newline() . $self->{arguments}->[0]->emit() . '  $P1 = $P0' . Main::newline() . $self->{arguments}->[1]->emit() . '  if $P0 == $P1 goto eq' . $id . Main::newline() . '  $P0 = 0' . Main::newline() . '  goto eq_end' . $id . Main::newline() . 'eq' . $id . ':' . Main::newline() . '  $P0 = 1' . Main::newline() . 'eq_end' . $id . ':' . Main::newline() . '  restore $P1' . Main::newline()) } else {  } }; do { if (($code eq 'infix:<!=>')) { ($label = ($label + 1));(my  $id = $label);return('  save $P1' . Main::newline() . $self->{arguments}->[0]->emit() . '  $P1 = $P0' . Main::newline() . $self->{arguments}->[1]->emit() . '  if $P0 == $P1 goto eq' . $id . Main::newline() . '  $P0 = 1' . Main::newline() . '  goto eq_end' . $id . Main::newline() . 'eq' . $id . ':' . Main::newline() . '  $P0 = 0' . Main::newline() . 'eq_end' . $id . ':' . Main::newline() . '  restore $P1' . Main::newline()) } else {  } }; do { if (($code eq 'ternary:<?? !!>')) { return(If->new( 'cond' => $self->{arguments}->[0],'body' => [$self->{arguments}->[1]],'otherwise' => [$self->{arguments}->[2]], )->emit()) } else {  } }; do { if (($code eq 'defined')) { return($self->{arguments}->[0]->emit() . '  $I0 = defined $P0' . Main::newline() . '  $P0 = $I0' . Main::newline()) } else {  } }; do { if (($code eq 'substr')) { return($self->{arguments}->[0]->emit() . '  $S0 = $P0' . Main::newline() . '  save $S0' . Main::newline() . $self->{arguments}->[1]->emit() . '  $I0 = $P0' . Main::newline() . '  save $I0' . Main::newline() . $self->{arguments}->[2]->emit() . '  $I1 = $P0' . Main::newline() . '  restore $I0' . Main::newline() . '  restore $S0' . Main::newline() . '  $S0 = substr $S0, $I0, $I1' . Main::newline() . '  $P0 = $S0' . Main::newline()) } else {  } }; (my  $List_args = $self->{arguments}); (my  $str = ''); (my  $ii = 10); my  $arg; do { for my $arg ( @{$List_args} ) { ($str = $str . '  save $P' . $ii . Main::newline());($ii = ($ii + 1)) } }; (my  $i = 10); do { for my $arg ( @{$List_args} ) { ($str = $str . $arg->emit() . '  $P' . $i . ' = $P0' . Main::newline());($i = ($i + 1)) } }; ($str = $str . '  $P0 = ' . $self->{code} . '('); ($i = 0); my  $List_p; do { for my $arg ( @{$List_args} ) { ($List_p->[$i] = '$P' . ($i + 10));($i = ($i + 1)) } }; ($str = $str . Main::join($List_p, ', ') . ')' . Main::newline()); do { for my $arg ( @{$List_args} ) { ($ii = ($ii - 1));($str = $str . '  restore $P' . $ii . Main::newline()) } }; return($str) }

}
{
package Return;
sub new { shift; bless { @_ }, "Return" }
sub result { @_ == 1 ? ( $_[0]->{result} ) : ( $_[0]->{result} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; $self->{result}->emit() . '  .return( $P0 )' . Main::newline() }

}
{
package If;
sub new { shift; bless { @_ }, "If" }
sub cond { @_ == 1 ? ( $_[0]->{cond} ) : ( $_[0]->{cond} = $_[1] ) };
sub body { @_ == 1 ? ( $_[0]->{body} ) : ( $_[0]->{body} = $_[1] ) };
sub otherwise { @_ == 1 ? ( $_[0]->{otherwise} ) : ( $_[0]->{otherwise} = $_[1] ) };
(my  $label = 100);
sub emit { my $self = shift; my $List__ = \@_; do { [] }; ($label = ($label + 1)); (my  $id = $label); return($self->{cond}->emit() . '  unless $P0 goto ifelse' . $id . Main::newline() . Main::join([ map { $_->emit() } @{ $self->{body} } ], '') . '  goto ifend' . $id . Main::newline() . 'ifelse' . $id . ':' . Main::newline() . Main::join([ map { $_->emit() } @{ $self->{otherwise} } ], '') . 'ifend' . $id . ':' . Main::newline()) }

}
{
package For;
sub new { shift; bless { @_ }, "For" }
sub cond { @_ == 1 ? ( $_[0]->{cond} ) : ( $_[0]->{cond} = $_[1] ) };
sub body { @_ == 1 ? ( $_[0]->{body} ) : ( $_[0]->{body} = $_[1] ) };
sub topic { @_ == 1 ? ( $_[0]->{topic} ) : ( $_[0]->{topic} = $_[1] ) };
(my  $label = 100);
sub emit { my $self = shift; my $List__ = \@_; do { [] }; (my  $cond = $self->{cond}); ($label = ($label + 1)); (my  $id = $label); do { if ((Main::isa($cond, 'Var') && ($cond->sigil() ne '@'))) { ($cond = Lit::Array->new( 'array' => [$cond], )) } else {  } }; return('' . $cond->emit() . '  save $P1' . Main::newline() . '  save $P2' . Main::newline() . '  $P1 = new .Iterator, $P0' . Main::newline() . ' test_iter' . $id . ':' . Main::newline() . '  unless $P1 goto iter_done' . $id . Main::newline() . '  $P2 = shift $P1' . Main::newline() . '  store_lex \'' . $self->{topic}->full_name() . '\', $P2' . Main::newline() . Main::join([ map { $_->emit() } @{ $self->{body} } ], '') . '  goto test_iter' . $id . Main::newline() . ' iter_done' . $id . ':' . Main::newline() . '  restore $P2' . Main::newline() . '  restore $P1' . Main::newline() . '') }

}
{
package Decl;
sub new { shift; bless { @_ }, "Decl" }
sub decl { @_ == 1 ? ( $_[0]->{decl} ) : ( $_[0]->{decl} = $_[1] ) };
sub type { @_ == 1 ? ( $_[0]->{type} ) : ( $_[0]->{type} = $_[1] ) };
sub var { @_ == 1 ? ( $_[0]->{var} ) : ( $_[0]->{var} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; (my  $decl = $self->{decl}); (my  $name = $self->{var}->name()); (($decl eq 'has') ? '  addattribute self, ' . Main::quote() . $name . Main::quote() . Main::newline() : '  .local pmc ' . $self->{var}->full_name() . ' ' . Main::newline() . '  .lex \'' . $self->{var}->full_name() . '\', ' . $self->{var}->full_name() . ' ' . Main::newline()) }

}
{
package Sig;
sub new { shift; bless { @_ }, "Sig" }
sub invocant { @_ == 1 ? ( $_[0]->{invocant} ) : ( $_[0]->{invocant} = $_[1] ) };
sub positional { @_ == 1 ? ( $_[0]->{positional} ) : ( $_[0]->{positional} = $_[1] ) };
sub named { @_ == 1 ? ( $_[0]->{named} ) : ( $_[0]->{named} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; ' print \'Signature - TODO\'; die \'Signature - TODO\'; ' };
sub invocant { my $self = shift; my $List__ = \@_; do { [] }; $self->{invocant} };
sub positional { my $self = shift; my $List__ = \@_; do { [] }; $self->{positional} }

}
{
package Method;
sub new { shift; bless { @_ }, "Method" }
sub name { @_ == 1 ? ( $_[0]->{name} ) : ( $_[0]->{name} = $_[1] ) };
sub sig { @_ == 1 ? ( $_[0]->{sig} ) : ( $_[0]->{sig} = $_[1] ) };
sub block { @_ == 1 ? ( $_[0]->{block} ) : ( $_[0]->{block} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; (my  $sig = $self->{sig}); (my  $invocant = $sig->invocant()); (my  $pos = $sig->positional()); (my  $str = ''); (my  $i = 0); my  $field; do { for my $field ( @{$pos} ) { ($str = $str . '  $P0 = params[' . $i . ']' . Main::newline() . '  .lex \'' . $field->full_name() . '\', $P0' . Main::newline());($i = ($i + 1)) } }; return('.sub ' . Main::quote() . $self->{name} . Main::quote() . ' :method :outer(' . Main::quote() . '_class_vars_' . Main::quote() . ')' . Main::newline() . '  .param pmc params  :slurpy' . Main::newline() . '  .lex \'' . $invocant->full_name() . '\', self' . Main::newline() . $str . Main::join([ map { $_->emit() } @{ $self->{block} } ], '') . '.end' . Main::newline() . Main::newline()) }

}
{
package Sub;
sub new { shift; bless { @_ }, "Sub" }
sub name { @_ == 1 ? ( $_[0]->{name} ) : ( $_[0]->{name} = $_[1] ) };
sub sig { @_ == 1 ? ( $_[0]->{sig} ) : ( $_[0]->{sig} = $_[1] ) };
sub block { @_ == 1 ? ( $_[0]->{block} ) : ( $_[0]->{block} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; (my  $sig = $self->{sig}); (my  $invocant = $sig->invocant()); (my  $pos = $sig->positional()); (my  $str = ''); (my  $i = 0); my  $field; do { for my $field ( @{$pos} ) { ($str = $str . '  $P0 = params[' . $i . ']' . Main::newline() . '  .lex \'' . $field->full_name() . '\', $P0' . Main::newline());($i = ($i + 1)) } }; return('.sub ' . Main::quote() . $self->{name} . Main::quote() . ' :outer(' . Main::quote() . '_class_vars_' . Main::quote() . ')' . Main::newline() . '  .param pmc params  :slurpy' . Main::newline() . $str . Main::join([ map { $_->emit() } @{ $self->{block} } ], '') . '.end' . Main::newline() . Main::newline()) }

}
{
package Do;
sub new { shift; bless { @_ }, "Do" }
sub block { @_ == 1 ? ( $_[0]->{block} ) : ( $_[0]->{block} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; Main::join([ map { $_->emit() } @{ $self->{block} } ], '') }

}
{
package Use;
sub new { shift; bless { @_ }, "Use" }
sub mod { @_ == 1 ? ( $_[0]->{mod} ) : ( $_[0]->{mod} = $_[1] ) };
sub emit { my $self = shift; my $List__ = \@_; do { [] }; '  .include ' . Main::quote() . $self->{mod} . Main::quote() . Main::newline() }

}
1;
