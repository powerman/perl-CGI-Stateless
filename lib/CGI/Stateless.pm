package CGI::Stateless;

use warnings;
use strict;
use Carp;

use version; our $VERSION = qv('1.0.1');    # update POD & Changes & README

# update DEPENDENCIES in POD & Makefile.PL & README
use base 'CGI';


# override the initialization behavior so that
# state is NOT maintained between invocations 
sub save_request { }


1; # Magic true value required at end of module
__END__

=head1 NAME

CGI::Stateless - Make CGI.pm stateless for use in persistent environment


=head1 VERSION

This document describes CGI::Stateless version 1.0.1


=head1 SYNOPSIS

 use CGI::Stateless;

 # When new request come in FastCGI-like persistent environment:

 local *STDIN;
 open STDIN, '<', \$stdin or die "open STDIN: $!\n";
 local %ENV = %env;
 local $CGI::Q = CGI::Stateless->new();

 # Now you can AGAIN call CGI.pm methods like CGI::param(), etc.


=head1 DESCRIPTION

Force CGI.pm to parse %ENV and STDIN B<AGAIN> in FastCGI-like persistent script.


=head1 INTERFACE 

Use it just like shown in SYNOPSIS, there no other use.


=head1 DIAGNOSTICS

None.


=head1 CONFIGURATION AND ENVIRONMENT

CGI::Stateless requires no configuration files or environment variables.


=head1 DEPENDENCIES

CGI


=head1 INCOMPATIBILITIES

None reported.


=head1 BUGS AND LIMITATIONS

No bugs have been reported.

Please report any bugs or feature requests to
C<bug-cgi-stateless@rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org>.


=head1 AUTHOR

Alex Efros  C<< <powerman-asdf@ya.ru> >>


=head1 LICENSE AND COPYRIGHT

Copyright (c) 2009, Alex Efros C<< <powerman-asdf@ya.ru> >>. All rights reserved.

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself. See L<perlartistic>.


=head1 DISCLAIMER OF WARRANTY

BECAUSE THIS SOFTWARE IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
FOR THE SOFTWARE, TO THE EXTENT PERMITTED BY APPLICABLE LAW. EXCEPT WHEN
OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES
PROVIDE THE SOFTWARE "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER
EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE
ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE SOFTWARE IS WITH
YOU. SHOULD THE SOFTWARE PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL
NECESSARY SERVICING, REPAIR, OR CORRECTION.

IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
REDISTRIBUTE THE SOFTWARE AS PERMITTED BY THE ABOVE LICENCE, BE
LIABLE TO YOU FOR DAMAGES, INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL,
OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE USE OR INABILITY TO USE
THE SOFTWARE (INCLUDING BUT NOT LIMITED TO LOSS OF DATA OR DATA BEING
RENDERED INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD PARTIES OR A
FAILURE OF THE SOFTWARE TO OPERATE WITH ANY OTHER SOFTWARE), EVEN IF
SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF
SUCH DAMAGES.
