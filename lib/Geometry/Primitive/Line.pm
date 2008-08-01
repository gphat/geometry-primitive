package Geometry::Primitive::Line;
use Moose;

extends 'Geometry::Primitive';

with qw(Geometry::Primitive::Shape MooseX::Clone);

has 'start' => (
    is => 'rw',
    isa => 'Geometry::Primitive::Point',
    required => 1
);

has 'end' => (
    is => 'rw',
    isa => 'Geometry::Primitive::Point',
    required => 1
);

sub contains_point {
    my ($self, $x, $y) = @_;

    my $point;
    if(!ref($x) && defined($y)) {
        # This allows the user to pass in $x and $y as scalars, which
        # easier sometimes.
        $point = Geometry::Primitive::Point->new(x => $x, y => $y);
    } else {
        $point = $x;
    }

    my $expy = ($self->slope * $point->x) + $self->y_intercept;
    return $expy == $point->y;
}

sub length {
    my ($self) = @_;

    return sqrt(($self->end->x - $self->start->x) ** 2
        + ($self->end->y - $self->start->y) ** 2);
}

sub point_end {
    my ($self) = @_; return $self->end;
}

sub point_start {
    my ($self) = @_; return $self->start;
}

sub slope {
    my ($self) = @_;

    return ($self->end->x - $self->start->x)
        / ($self->end->y - $self->start->y);
}

sub y_intercept {
    my ($self) = @_;

    return $self->start->y - ($self->slope * $self->start->x);
}

__PACKAGE__->meta->make_immutable;

no Moose;
1;

__END__

=head1 NAME

Geometry::Primitive::Line

=head1 DESCRIPTION

Geometry::Primitive::Line represents a straight curve defined by two points.

=head1 SYNOPSIS

  use Geometry::Primitive::Line;

  my $line = Geometry::Primitive::Line->new();
  $line->start($point1);
  $line->end($point2);

=head1 METHODS

=head2 Constructor

=over 4

=item I<new>

Creates a new Geometry::Primitive::Line

=back

=head2 Instance Methods

=over 4

=item I<contains_point>

Returns true if the supplied point is 'on' the line.  Accepts either a point
object or an x y pair.

=item I<end>

Set/Get the end point of the line.

=item I<length>

Get the length of the line.

=item I<point_end>

Get the end point.  Provided for Shape role.

=item I<point_start>

Get the start point.  Provided for Shape role.

=item I<slope>

Get the slope of the line.

=item I<start>

Set/Get the start point of the line.

=item I<y_intercept>

Returns the Y intercept of this line.

=back

=head1 AUTHOR

Cory Watson <gphat@cpan.org>

Infinity Interactive, L<http://www.iinteractive.com>

=head1 COPYRIGHT & LICENSE

Copyright 2008 by Infinity Interactive, Inc.

L<http://www.iinteractive.com>

You can redistribute and/or modify this code under the same terms as Perl
itself.