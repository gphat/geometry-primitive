use Test::More tests => 5;

BEGIN {
    use_ok('Geometry::Primitive::Util');
};

use Geometry::Primitive::Util qw(PI);

ok(defined(PI), 'pi');
ok(PI =~ /^3.14/, 'pi value');

my $rads = Geometry::Primitive::Util->degrees_to_radians(24);
ok($rads =~ /^0.418/, 'degrees_to_radians');
my $degs = Geometry::Primitive::Util->radians_to_degrees(0.418879020478639);
ok($degs =~  /^24/, 'radians_to_degrees');
