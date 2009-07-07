use inc::Module::Install;

name     'CGI-Stateless';
all_from 'lib/CGI/Stateless.pm';
author   'Alex Efros <powerman-asdf@ya.ru>';
license  'perl';

build_requires 'Test::More';

auto_install;

WriteAll;

