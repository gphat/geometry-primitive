package Geometry::Primitive::Line;
use Moose;

extends 'Geometry::Primitive';

has 'point_start' => (
    is => 'rw',
    isa => 'Geometry::Primitive::Point'
);

has 'point_end' => (
    is => 'rw',
    isa => 'Geometry::Primitive::Point'
);

#TODO Needs a get points, but isn't a shape!

sub slope {
    my ($self) = @_;

    return ($self->point_end->x - $self->point_start->x)
        / ($self->point_end->y - $self->point_start->y);
}

sub length {
    my ($self) = @_;

    return sqrt(($self->point_end->x - $self->point_start->x) ** 2
        + ($self->point_end->y - $self->point_start->y) ** 2);
}

no Moose;
1;

__END__

=head1 NAME

Geometry::Primitive::Line

=head1 DESCRIPTION

Geometry::Primitive::Line represents a straight curve defined by two points.

=head1 SYNOPSIS

  use Geometry::Primitive::Polygon;

  my $poly = Geometry::Primitive::Polygon->new();
  $poly->point_start($point1);
  $poly->point_end($point2);

=head1 METHODS

=head2 Constructor

=over 4

=item I<new>

Creates a new Geometry::Primitive::Polygon

=back

=head2 Instance Methods

=over 4

=item I<length>

Get the length of the line.

=item I<point_start>

Set/Get the start point of the line.

=item I<point_end>

Set/Get the end point of the line.

=item I<slope>

Get the slope of the line.

=back

=head1 AUTHOR

Cory Watson <cory.watson@iinteractive.com>

=head1 COPYRIGHT & LICENSE

Copyright 2008 by Infinity Interactive, Inc.

L<http://www.iinteractive.com>

You can redistribute and/or modify this code under the same terms as Perl
itself.