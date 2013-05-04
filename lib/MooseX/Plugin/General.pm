package MooseX::Plugin::General;
use 5.016002;   # 5.16.2    # 2012  # __SUB__
use strict;
use warnings;
use version; our $VERSION = qv('v0.0.0');

# Core modules
use Moose;

# CPAN modules

# Alternate uses
#~ use Devel::Comments '###', ({ -file => 'debug.log' });                   #~

## use
#============================================================================#
# CLASS DECLARATIONS

#----------------------------------------------------------------------------#

    use My::Pork; 


## END MODULE
1;
#============================================================================#
__END__

=head1 NAME

MooseX::Plugin::General - Plugins, addons, runtime extensions

=head1 VERSION

This document describes MooseX::Plugin::General version v0.0.0

=head1 SYNOPSIS

    package My::Types;
    use MooseX::Types -declare => [ 'MeatType' ];
    subtype MeatType,
        as      Object,
        where   { $_->does('My::Role::Meat') },
        message { 'Must load a plugin that consumes My::Role::Meat' };
    
    package My::Role::Meat;
    use Moose::Role;
    has 'fat'       => (
        is              => 'ro',
        isa             => 'Int',
    );
    
    package My::Pork;
    with 'My::Role::Meat';
    has '+fat'      => (
        default         => 100,
    );
    
    package My::Plate;
    use My::Types qw| MeatType |;
    use MooseX::Plugin::General;
    has 'meat'      => (
        is              => 'ro',
        isa             => MeatType,
        coerce          => 1,
    );
    
    package My::Menu;
    use My::Plate;
    my $dinner  = My::Plate->new( meat => 'Pork' );
    say $dinner->dump;
    # 

=head1 DESCRIPTION

=over

=begin html

<!--

=end html

E<10> E<8> E<9>
E<nbsp>I<<  Barker: Got any plugs? >> E<10> E<8> E<9>
I<< Corbett: Plugs. What kind of plugs? >> E<10> E<8> E<9>
E<nbsp>I<<  Barker: A rubber one, bathroom. >> E<10> E<8> E<9>
I<< Corbett: What size? >> E<10> E<8> E<9>
E<nbsp>I<<  Barker: Thirteen amp. >> E<10> E<8> E<9>
E<nbsp>E<nbsp>E<nbsp>E<nbsp>-- The Two Ronnies

=begin html

-->

&nbsp;<I> Barker:  Got any plugs? </I> </BR>
<I> Corbett: Plugs. What kind of plugs? </I> </BR>
&nbsp;<I> Barker:  A rubber one, bathroom. </I> </BR>
<I> Corbett: What size? </I> </BR>
&nbsp;<I> Barker:  Thirteen amp. </I> </BR>
&nbsp;&nbsp;&nbsp;&nbsp; -- The Two Ronnies

=end html

=back

=head1 METHODS 

=head2 new()

=head1 ACCSESSORS

Object-oriented accessor methods are provided for each parameter and result. 
They all do just what you'd expect. 

    $self               = $self->put_attr($string);
    $string             = $self->get_attr();

=head1 SEE ALSO

L<< Some::Module|Some::Module >>

=head1 INSTALLATION

This module is installed using L<< Module::Build|Module::Build >>. 

=head1 DIAGNOSTICS

=over

=item C<< some error message >>

Some explanation. 

=back

=head1 CONFIGURATION AND ENVIRONMENT

None. 

=head1 DEPENDENCIES

There are no non-core dependencies. 

=begin html

<!--

=end html

L<< version|version >> 0.99 E<10> E<8> E<9>
Perl extension for Version Objects

=begin html

-->

<DL>

<DT>    <a href="http://search.cpan.org/perldoc?version" 
            class="podlinkpod">version</a> 0.99 
<DD>    Perl extension for Version Objects

</DL>

=end html

This module should work with any version of perl 5.8.8 and up. 
However, you may need to upgrade some core modules. 

=head1 INCOMPATIBILITIES

None known.

=head1 BUGS AND LIMITATIONS

This is an early release. Reports and suggestions will be warmly welcomed. 

Please report any issues to: 
L<https://github.com/Xiong/mx-plugin/issues>.

=head1 DEVELOPMENT

This project is hosted on GitHub at: 
L<https://github.com/Xiong/mx-plugin>. 

=head1 THANKS

Somebody helped!

=head1 AUTHOR

Xiong Changnian C<< <xiong@cpan.org> >>

=head1 LICENSE

Copyright (C) 2013 
Xiong Changnian C<< <xiong@cpan.org> >>

This library and its contents are released under Artistic License 2.0:

L<http://www.opensource.org/licenses/artistic-license-2.0.php>

=begin fool_pod_coverage

No, I'm not just lazy. I think it's counterproductive to give each accessor 
its very own section. Sorry if you disagree. 

=head2 put_attr

=head2 get_attr

=end   fool_pod_coverage

=cut





