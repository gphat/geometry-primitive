use Test::More tests => 3;

BEGIN {
    use_ok('Geometry::Primitive::Ellipse');
};

my $circ = Geometry::Primitive::Ellipse->new(width => 4 , height => 2);
isa_ok($circ, 'Geometry::Primitive::Ellipse');

ok($circ->area =~ /^6.28/, 'area');
