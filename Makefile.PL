use ExtUtils::MakeMaker;

WriteMakefile(
   NAME          => 'Class::Gomor',
   LICENSE       => 'Artistic',
   VERSION_FROM  => 'lib/Class/Gomor.pm',
   ABSTRACT_FROM => 'lib/Class/Gomor.pm',
   AUTHOR        => 'GomoR <perl@gomor.org>',
   PREREQ_PM     => {
      Data::Dumper => 0,
   },
);
