use Test;
BEGIN { plan(tests => 1) }

require Class::Gomor::Array;
our @ISA = qw(Class::Gomor::Array);
our @AS = qw(s1);
our @AA = qw(a1);
our @AO = qw(o1);
__PACKAGE__->cgBuildIndices;
__PACKAGE__->cgBuildAccessorsScalar(\@AS);
__PACKAGE__->cgBuildAccessorsArray (\@AA);

my $new = __PACKAGE__->new;
$new->s1('test');
$new->a1([ 'test' ]);
$new->[$new->cgGetIndice('o1')] = 'test';

my $clone = $new->cgClone;
$clone->s1('test2');

print 'new:   '.$new->s1.   "\n";
print 'clone: '.$clone->s1. "\n";
print 'new:   '.$new->a1.   "\n";
print 'new:   '.$new->[$new->cgGetIndice('o1')]. "\n";

my $full = $clone->s1($new);
my $fullList = $full->cgFullClone(10);
$clone->s1('test2');
$fullList->[2]->s1('test3');

print 'full:  '.$fullList->[2]->s1."\n";
print 'clone: '.$clone->s1. "\n";

ok(1);
