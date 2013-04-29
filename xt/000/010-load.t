use Test::More tests => 1;

BEGIN {
    $SIG{__DIE__}   = sub {
        warn @_;
        BAIL_OUT( q[Couldn't use module; can't continue.] );    
        
    };
}   

BEGIN {
#
use MooseX::Plugin::General;        # Plugins, addons, runtime extensions

#    
}

pass( 'Load modules.' );
diag( "Testing Devel::Toolbox $Devel::Toolbox::VERSION" );
