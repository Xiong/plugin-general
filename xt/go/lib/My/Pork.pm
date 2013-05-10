package My::Pork;
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
with 'My::Role::Meat';
has '+fat'      => (
    default         => 100,
);

#----------------------------------------------------------------------------#



## END MODULE
1;
#============================================================================#
__END__





