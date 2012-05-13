use inc::Module::Install;

name     'CGI-Stateless';
all_from 'lib/CGI/Stateless.pm';
author   'Alex Efros <powerman-asdf@ya.ru>';
license  'perl';

requires        'version';

test_requires   'Test::More';

recommends      'Test::CheckManifest'   => '0.9';
recommends      'Test::Perl::Critic';
recommends      'Test::Pod::Coverage'   => '1.08';
recommends      'Pod::Coverage'         => '0.18';
recommends      'Test::Pod'             => '1.22';

auto_install;

WriteAll;

