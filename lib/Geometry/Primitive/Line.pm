package Geometry::Primitive::Line;
use Moose;

has 'point1' => (
    is => 'rw',
    isa => 'Geometry::Primitive::Point'
);

has 'point2' => (
    is => 'rw',
    isa => 'Geometry::Primitive::Point'
);

sub slope {
    my ($self) = @_;

    return ($self->point2->x - $self->point1->x)
        / ($self->point2->y - $self->point1->y);
}

sub length {
    my ($self) = @_;

    return sqrt(($self->point2->x - $self->point1->x) ** 2
        + ($self->point2->y - $self->point1->y) ** 2);
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
  $poly->point1($point1);
  $poly->point2($point2);

=head1 METHODS

=head2 Constructor

=over 4

=item I<new>

Creates a new Geometry::Primitive::Polygon

=back

=head2 Instance Methods

=over 4

=item I<point1>

Set/Get the first point on the line.

=item I<point2>

Set/Get the first point on the line.

=back

=head1 AUTHOR

Cory Watson <cory.watson@iinteractive.com>

=head1 COPYRIGHT & LICENSE

Copyright 2008 by Infinity Interactive, Inc.

L<http://www.iinteractive.com>

You can redistribute and/or modify this code under the same terms as Perl
itself.