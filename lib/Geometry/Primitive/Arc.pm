package Geometry::Primitive::Arc;
use Moose;

use MooseX::AttributeHelpers;

extends 'Geometry::Primitive';

with qw(Geometry::Primitive::Shape MooseX::Clone);

use Geometry::Primitive::Point;

has 'angle_start' => ( is => 'rw', isa => 'Num', required => 1 );
has 'angle_end' => ( is => 'rw', isa => 'Num', required => 1 );
has 'origin' => (
    is => 'rw', isa => 'Geometry::Primitive::Point', coerce => 1
);
has 'radius' => ( is => 'rw', isa => 'Num', required => 1 );

__PACKAGE__->meta->make_immutable;

# Area of a sector, if it's ever needed...
# sub area {
#     my ($self) = @_;
# 
#     return (($self->radius**2 * ($self->angle_end - $self->angle_start)) / 2
#     );
# }
sub get_point_at_angle {
    my ($self, $angle) = @_;

    return Geometry::Primitive::Point->new(
        x => $self->origin->x + ($self->radius * cos($angle)),
        y => $self->origin->y + ($self->radius * sin($angle))
    );
}

sub scale {
    my ($self, $amount) = @_;

    $self->radius($self->radius * $amount);
}

sub length {
    my ($self) = @_;

    return $self->radius * ($self->angle_end - $self->angle_start);
}

sub point_end {
    my ($self) = @_;

    return $self->get_point_at_angle($self->angle_end);
}

sub point_start {
    my ($self) = @_;

    return $self->get_point_at_angle($self->angle_start);
}

no Moose;
1;

__END__

=head1 NAME

Geometry::Primitive::Arc

=head1 DESCRIPTION

Geometry::Primitive::Arc represents a closed segment of a curve.

=head1 SYNOPSIS

  use Geometry::Primitive::Arc;

  my $arc = Geometry::Primitive::Arc->new(
      angle_start => 0,
      angle_end => 1.57079633,
      radius => 15
  );

=head1 METHODS

=head2 Constructor

=over 4

=item I<new>

Creates a new Geometry::Primitive::Arc

=back

=head2 Instance Methods

=over 4

=item I<angle_start>

The starting angle for this arc in radians.

=item I<angle_end>

The ending angle for this arc in radians.

=item I<length>

Returns the length of this arc.

=item I<get_point_at_angle>

Given angle in radians returns the point at that angle on this arc.  Returns
undef if the angle falls outside this arc's range.

=item I<scale ($amount)>

Increases the radius by multiplying it by the supplied amount.

=item I<point_end>

Get the end point.  Provided for Shape role.

=item I<point_start>

Get the start point.  Provided for Shape role.

=item I<radius>

Returns the radius of the arc.

=back

=head1 AUTHOR

Cory Watson <gphat@cpan.org>

Infinity Interactive, L<http://www.iinteractive.com>

=head1 COPYRIGHT & LICENSE

Copyright 2008 by Infinity Interactive, Inc.

L<http://www.iinteractive.com>

You can redistribute and/or modify this code under the same terms as Perl
itself.