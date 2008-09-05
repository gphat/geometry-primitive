package Geometry::Primitive::Polygon;
use Moose;
use MooseX::AttributeHelpers;
use MooseX::Storage;

extends 'Geometry::Primitive';

with qw(Geometry::Primitive::Shape MooseX::Clone);
with Storage(format => 'JSON', io => 'File');

has 'points' => (
    metaclass => 'Collection::Array',
    is => 'rw',
    isa => 'ArrayRef[Geometry::Primitive::Point]',
    traits => [qw(Clone)],
    default => sub { [] },
    provides => {
        'push' => 'add_point',
        'clear' => 'clear_points',
        'count' => 'point_count',
        'get' => 'get_point'
    }
);

sub area {
    my ($self) = @_;

    # http://mathworld.wolfram.com/PolygonArea.html
    my $area = 0;
    my $last = $self->get_point(0);
    for (my $i = 1; $i < $self->point_count; $i++) {
        my $curr = $self->get_point($i);

        $area += ($last->x * $curr->y) - ($curr->x * $last->y);
        $last = $curr;
    }

    return abs($area / 2);
}

sub point_end {
    my ($self) = @_;

    return $self->get_point($self->point_count - 1);
}

sub point_start {
    my ($self) = @_;

    return $self->get_point(0);
}

sub scale {
    my ($self, $amount) = @_;

    foreach my $p (@{ $self->points }) {
        $p->x($p->x * $amount);
        $p->y($p->y * $amount);
    }

}

__PACKAGE__->meta->make_immutable;

no Moose;
1;

__END__

=head1 NAME

Geometry::Primitive::Polygon

=head1 DESCRIPTION

Geometry::Primitive::Polygon represents a two dimensional figure bounded by a
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

=item I<area>

Area of this polygon.  Assumes it is non-self-intersecting.

=item I<add_point>

Add a point to this polygon.

=item I<clear_points>

Clears all points from this polygon.

=item I<point_count>

Returns the number of points that bound this polygon.

=item I<get_point>

Returns the point at the specified offset.

=item I<point_end>

Get the end point.  Provided for Shape role.

=item I<point_start>

Get the start point.  Provided for Shape role.

=item I<points>

Set/Get the arrayref of points that make up this Polygon.

=item I<scale ($amount)>

Scale this this polygon by the supplied amount.

=back

=head1 AUTHOR

Cory Watson <gphat@cpan.org>

Infinity Interactive, L<http://www.iinteractive.com>

=head1 COPYRIGHT & LICENSE

Copyright 2008 by Infinity Interactive, Inc.

L<http://www.iinteractive.com>

You can redistribute and/or modify this code under the same terms as Perl
itself.