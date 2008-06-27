use Test::More tests => 4;

BEGIN {
    use_ok('Geometry::Primitive::Arc');
};

my $arc = Geometry::Primitive::Arc->new(
    angle_start => 45, angle_end => 65, radius => 15
);

cmp_ok($arc->angle_start, '==', 45);
cmp_ok($arc->angle_end, '==', 65);
cmp_ok($arc->radius, '==', 15, 'radius');