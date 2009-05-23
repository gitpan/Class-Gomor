#
# $Id: Makefile.PL 1633 2009-05-23 13:30:33Z gomor $
#
use ExtUtils::MakeMaker;

WriteMakefile(
   NAME          => 'Class::Gomor',
   LICENSE       => 'artistic',
   VERSION_FROM  => 'lib/Class/Gomor.pm',
   ABSTRACT_FROM => 'lib/Class/Gomor.pm',
   AUTHOR        => 'GomoR <gomor-cpan_at_gomor.org>',
   PREREQ_PM     => {
      Data::Dumper => 0,
   },
);
