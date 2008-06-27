use Test::More tests => 4;

BEGIN {
    use_ok('Geometry::Primitive::Point');
    use_ok('Geometry::Primitive::Line');
};

my $line = Geometry::Primitive::Line->new();
my $point1 = Geometry::Primitive::Point->new(x => 1, y => 2);
$line->point_start($point1);
my $point2 = Geometry::Primitive::Point->new(x => 3, y => 4);
$line->point_end($point2);
cmp_ok($line->slope(), '==', 1, 'slope');
cmp_ok($line->length(), '==', sqrt(8), 'length');
