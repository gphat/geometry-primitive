use Test::More tests => 2;

BEGIN {
    use_ok('Geometry::Primitive::Util');
};

use Geometry::Primitive::Util qw(PI);

ok(defined(PI), 'pi');