package Geometry::Primitive::Polygon;
use Moose;

use MooseX::AttributeHelpers;

has 'points' => (
    metaclass => 'Collection::Array',
    is => 'rw',
    isa => 'ArrayRef[Geometry::Primitive::Point]',
    default => sub { [] },
    provides => {
        'push' => 'add_point',
        'clear' => 'clear_points',
        'count' => 'count_points',
        'get' => 'get_point'
    }
);

no Moose;
1;

__END__

=head1 NAME

Geometry::Primitive::Polygon

=head1 DESCRIPTION

Geometry::Primitive::Point represents a two dimensional figure bounded by a
series of points that represent a closed path.

=head1 SYNOPSIS

  use Geometry::Primitive::Polygon;

  my $poly = Geometry::Primitive::Polygon->new();
  $poly->add_point($point1);
  $poly->add_point($point2);
  $poly->add_point($point3);
  # No need to close the path, it's handled automatically

=head1 METHODS

=head2 Constructor

=over 4

=item I<new>

Creates a new Geometry::Primitive::Polygon

=back

=head2 Instance Methods

=over 4

=item I<add_point>

Add a point to this polygon.

=item I<clear_points>

Clears all points from this polygon.

=item I<count_points>

Returns the number that bound this polygon.

=item I<get_point>

Returns the point at the specified offset.

=back

=head1 AUTHOR

Cory Watson <cory.watson@iinteractive.com>

=head1 COPYRIGHT & LICENSE

Copyright 2008 by Infinity Interactive, Inc.

L<http://www.iinteractive.com>

You can redistribute and/or modify this code under the same terms as Perl
itself.