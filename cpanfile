requires 'perl', '5.010001';

requires 'CGI';
requires 'parent';

on configure => sub {
    requires 'Module::Build::Tiny', '0.034';
};

on test => sub {
    requires 'Test::More';
};

on develop => sub {
    requires 'Test::Distribution';
    requires 'Test::Perl::Critic';
};
