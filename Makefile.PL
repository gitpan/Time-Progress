use ExtUtils::MakeMaker;
WriteMakefile(
    'NAME'		      => 'Time::Progress',
    'VERSION_FROM'	=> 'lib/Time/Progress.pm', # finds $VERSION
    'PREREQ_PM'		  => {}, # e.g., Module::Name => 1.1
    
    (
      $] >= 5.005 ?    ## Add these new keywords supported since 5.005
        ( ABSTRACT_FROM => 'lib/Time/Progress.pm', AUTHOR => 'Vladi Belperchinov-Shabanski <cade@bis.bg>' )
      : 
        ()
    ),
);
