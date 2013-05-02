package My::Types;
use 5.016002;   # 5.16.2    # 2012  # __SUB__
use strict;
use warnings;
use version; our $VERSION = qv('v0.0.0');

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#
# This is only a dummy module for testing purposes. Do not use!
#    =  Copyright 2013 Xiong Changnian <xiong@cpan.org>   =
#    = Free Software = Artistic License 2.0 = NO WARRANTY =
#
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Alternate uses
#~ use Devel::Comments '###', ({ -file => 'debug.log' });                   #~

## use
#============================================================================#
# CLASS DECLARATIONS

use Moose;
use MooseX::Types::Moose qw| Str Object |;
use MooseX::Types -declare => [ 'MeatType' ];
role_type MeatType,
    {
        role    => 'My::Role::Meat',
        message => sub { 'Must load a plugin that consumes My::Role::Meat' },
    };
coerce MeatType,
    from Str,
    via \&_do_coerce;    # HACKY

#----------------------------------------------------------------------------#

sub _do_coerce {
    say STDERR "Coerce: $_";
    use My::Pork; 
    My::Pork->new;
};

## END MODULE
1;
#============================================================================#
__END__





