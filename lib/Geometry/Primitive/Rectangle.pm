package Geometry::Primitive::Rectangle;
use Moose;

use MooseX::AttributeHelpers;

use Geometry::Primitive::Point;

extends 'Geometry::Primitive';

with 'Geometry::Primitive::Shape';

has 'height' => ( is => 'rw', isa => 'Num', required => 1 );
has 'origin' => ( is => 'rw', isa => 'Geometry::Primitive::Point', required => 1 );
has 'width' => ( is => 'rw', isa => 'Num', required => 1 );

sub get_points {
    my ($self) = @_;

    my @points;
    push(@points, $self->origin());
    push(@points, Geometry::Primitive::Point->new(
        $self->origin->x + $self->width, $self->origin->y
    ));
    push(@points, Geoemetry::Primitive::Point->new(
        $self->origin->x, $self->origin->y + $self->height
    ));
    push(@points, Geoemetry::Primitive::Point->new(
        $self->origin->x + $self->width, $self->origin->y + $self->height
    ));

    return \@points
}

no Moose;
1;

__END__

=head1 NAME

Geometry::Primitive::Rectangle

=head1 DESCRIPTION

Geometry::Primitive::Rectangle a space defined by a point, a width and a
height.

=head1 SYNOPSIS

  use Geometry::Primitive::Rectangle;

  my $poly = Geometry::Primitive::Rectangle->new();
  $poly->add_point($point1);
  $poly->height(100);
  $poly->width(100);

=head1 METHODS

=head2 Constructor

=over 4

=item I<new>

Creates a new Geometry::Primitive::Rectangle

=back

=head2 Instance Methods

=over 4

=item I<get_points>

Get the points that make up this Rectangle.

=item I<width>

Add a point to this Rectangle.

=item I<height>

=back

=head1 AUTHOR

Cory Watson <cory.watson@iinteractive.com>

=head1 COPYRIGHT & LICENSE

Copyright 2008 by Infinity Interactive, Inc.

L<http://www.iinteractive.com>

You can redistribute and/or modify this code under the same terms as Perl
itself.