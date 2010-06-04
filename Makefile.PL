use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Oyster',
    AUTHOR              => q{Vikas N Kumar <vikas@cpan.org>},
    VERSION_FROM        => 'lib/Oyster.pm',
    ABSTRACT_FROM       => 'lib/Oyster.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'mit')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Oyster-*' },
);
