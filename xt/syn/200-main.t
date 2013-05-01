use 5.016002;   # 5.16.2    # 2012  # __SUB__
use strict;
use warnings;

use Test::More;

{
    package My::Types;
    use MooseX::Types::Moose qw| Str Object |;
    use MooseX::Types -declare => [ 'MeatType' ];
    subtype MeatType,
        as      Object,
        where   { $_->does('My::Meat::Role') },
        message { 'Must load a plugin that consumes My::Meat::Role' };
    coerce MeatType,
        from Str,
        via { bless {}, 'My::Pork' };
        
}
{    
    package My::Meat::Role;
    use Moose::Role;
    has 'fat'       => (
        is              => 'ro',
        isa             => 'Int',
    );
}
{    
    package My::Pork;
    use Moose;
    with 'My::Meat::Role';
    has '+fat'      => (
        default         => 100,
    );
}
{    
    package My::Plate;
    use Moose;
#~     use My::Types qw| MeatType |;
        BEGIN { My::Types->import( qw| MeatType | ) };
    use MooseX::Plugin::General;
    has 'meat'      => (
        is              => 'ro',
        isa             => MeatType,
        coerce          => 1,
    );
}
{    
    package My::Menu;
    use Moose;
#~     use My::Plate;
    my $dinner  = My::Plate->new( meat => 'Pork' );
    say ( "$_: $dinner->{$_}" ) for keys %$dinner;
    say $dinner->dump;
}
