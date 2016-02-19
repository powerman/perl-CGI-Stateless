[![Build Status](https://travis-ci.org/powerman/perl-CGI-Stateless.svg?branch=master)](https://travis-ci.org/powerman/perl-CGI-Stateless)
[![Coverage Status](https://coveralls.io/repos/powerman/perl-CGI-Stateless/badge.svg?branch=master)](https://coveralls.io/r/powerman/perl-CGI-Stateless?branch=master)

# NAME

CGI::Stateless - Make CGI.pm stateless for use in persistent environment

# VERSION

This document describes CGI::Stateless version v2.0.0

# SYNOPSIS

    use CGI::Stateless;

    # When new request come in FastCGI-like persistent environment:

    local *STDIN;
    open STDIN, '<', \$stdin or die "open STDIN: $!\n";
    local %ENV = %env;
    local $CGI::Q = CGI::Stateless->new();

    # Now you can AGAIN call CGI.pm methods like CGI::param(), etc.

# DESCRIPTION

Force CGI.pm to parse %ENV and STDIN **AGAIN** in FastCGI-like persistent script.

# INTERFACE 

Use it just like shown in SYNOPSIS, there no other use.

# SUPPORT

## Bugs / Feature Requests

Please report any bugs or feature requests through the issue tracker
at [https://github.com/powerman/perl-CGI-Stateless/issues](https://github.com/powerman/perl-CGI-Stateless/issues).
You will be notified automatically of any progress on your issue.

## Source Code

This is open source software. The code repository is available for
public review and contribution under the terms of the license.
Feel free to fork the repository and submit pull requests.

[https://github.com/powerman/perl-CGI-Stateless](https://github.com/powerman/perl-CGI-Stateless)

    git clone https://github.com/powerman/perl-CGI-Stateless.git

## Resources

- MetaCPAN Search

    [https://metacpan.org/search?q=CGI-Stateless](https://metacpan.org/search?q=CGI-Stateless)

- CPAN Ratings

    [http://cpanratings.perl.org/dist/CGI-Stateless](http://cpanratings.perl.org/dist/CGI-Stateless)

- AnnoCPAN: Annotated CPAN documentation

    [http://annocpan.org/dist/CGI-Stateless](http://annocpan.org/dist/CGI-Stateless)

- CPAN Testers Matrix

    [http://matrix.cpantesters.org/?dist=CGI-Stateless](http://matrix.cpantesters.org/?dist=CGI-Stateless)

- CPANTS: A CPAN Testing Service (Kwalitee)

    [http://cpants.cpanauthors.org/dist/CGI-Stateless](http://cpants.cpanauthors.org/dist/CGI-Stateless)

# AUTHOR

Alex Efros &lt;powerman@cpan.org>

# COPYRIGHT AND LICENSE

This software is Copyright (c) 2009 by Alex Efros &lt;powerman@cpan.org>.

This is free software, licensed under:

    The MIT (X11) License
