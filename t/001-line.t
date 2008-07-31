use Test::More tests => 9;

BEGIN {
    use_ok('Geometry::Primitive::Point');
    use_ok('Geometry::Primitive::Line');
};

my $point1 = Geometry::Primitive::Point->new(x => 1, y => 2);
my $point2 = Geometry::Primitive::Point->new(x => 3, y => 4);

my $line = Geometry::Primitive::Line->new(start => $point1, end => $point2);

ok($line->point_start->equal_to($point1), 'point_start');
ok($line->point_end->equal_to($point2), 'point_end');

cmp_ok($line->slope, '==', 1, 'slope');
cmp_ok($line->length, '==', sqrt(8), 'length');
cmp_ok($line->y_intercept, '==', 1, 'y_intercept');

ok($line->contains_point(-2, -1), 'contains_point');
ok(!$line->contains_point(-1, -1), 'contains_point (wrong)');