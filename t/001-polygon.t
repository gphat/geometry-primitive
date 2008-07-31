use Test::More tests => 7;

BEGIN {
    use_ok('Geometry::Primitive::Point');
    use_ok('Geometry::Primitive::Polygon');
};

my $poly = Geometry::Primitive::Polygon->new;
my $point1 = Geometry::Primitive::Point->new(x => 1, y => 2);
$poly->add_point($point1);
my $point2 = Geometry::Primitive::Point->new(x => 3, y => 4);
$poly->add_point($point2);
my $point3 = Geometry::Primitive::Point->new(x => 5, y => 6);
$poly->add_point($point3);

cmp_ok($poly->count_points, '==', 3, 'point count');
ok($poly->get_point(0)->equal_to($point1), 'get point 1');
ok($poly->point_start->equal_to($point1), 'start point');
ok($poly->point_end->equal_to($point3), 'end point');
$poly->clear_points;
cmp_ok($poly->count_points, '==', 0, 'cleared points');
