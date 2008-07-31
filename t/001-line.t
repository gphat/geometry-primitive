use Test::More tests => 7;

BEGIN {
    use_ok('Geometry::Primitive::Point');
    use_ok('Geometry::Primitive::Line');
};

my $line = Geometry::Primitive::Line->new;
my $point1 = Geometry::Primitive::Point->new(x => 1, y => 2);
$line->start($point1);
my $point2 = Geometry::Primitive::Point->new(x => 3, y => 4);
$line->end($point2);
cmp_ok($line->slope, '==', 1, 'slope');
cmp_ok($line->length, '==', sqrt(8), 'length');
cmp_ok($line->y_intercept, '==', 1, 'y_intercept');

ok($line->contains_point(-2, -1), 'contains_point');
ok(!$line->contains_point(-1, -1), 'contains_point (wrong)');