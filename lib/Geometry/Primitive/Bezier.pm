package Geometry::Primitive::Bezier;
use Moose;

extends 'Geometry::Primitive';

with qw(Geometry::Primitive::Shape MooseX::Clone);

use overload ('""' => 'to_string');

has 'control1' => (
    is => 'rw',
    isa => 'Geometry::Primitive::Point',
    required => 1
);
has 'control2' => (
    is => 'rw',
    isa => 'Geometry::Primitive::Point',
    required => 1
);
has 'end' => (
    is => 'rw',
    isa => 'Geometry::Primitive::Point',
    required => 1
);
has 'start' => (
    is => 'rw',
    isa => 'Geometry::Primitive::Point',
    required => 1
);

sub scale {
    my ($self, $amount) = @_;

    $self->start->x($self->start->x * $amount);
    $self->start->y($self->start->y * $amount);

    $self->end->x($self->end->x * $amount);
    $self->end->y($self->end->y * $amount);

    $self->control1->x($self->control1->x * $amount);
    $self->control1->y($self->control1->y * $amount);

    $self->control2->x($self->control2->x * $amount);
    $self->control2->y($self->control2->y * $amount);
}

sub point_end {
    my ($self) = @_; return $self->end;
}

sub point_start {
    my ($self) = @_; return $self->start;
}


sub to_string {
    my ($self) = @_;

    return $self->start->to_string.' - '.$self->control1->to_string
        .' = '.$self->control2->to_string.' = '.$self->end->to_string;
}

__PACKAGE__->meta->make_immutable;

no Moose;
1;

__END__

=head1 NAME

Geometry::Primitive::Bezier - Cubic Bézier Curve

=head1 DESCRIPTION

Geometry::Primitive::Bezier represents a cubic Bézier curve.

=head1 SYNOPSIS

  use Geometry::Primitive::Bezier;

  my $line = Geometry::Primitive::Bezier->new(
      start => $point1,
      control1 => $point2,
      control2 => $point3,
      end => $point4
  );

=head1 METHODS

=head2 Constructor

=over 4

=item I<new>

Creates a new Geometry::Primitive::Bezier

=back

=head2 Instance Methods

=over 4

=item I<control1>

Set/Get the first control point of the curve.

=item I<control2>

Set/Get the second control point of the curve.

=item I<end>

Set/Get the end point of the curve.

=item I<grow>

Does nothing, as I'm not sure how.  Patches or hints welcome.

=item I<point_end>

Get the end point.  Provided for Shape role.

=item I<point_start>

Get the start point.  Provided for Shape role.

=item I<scale>

Scales this curve by the amount provided.  Multiplies each coordinate by the
amount.

=item I<start>

Set/Get the start point of the line.

=item I<to_string>

Guess!

=back

=head1 AUTHOR

Cory Watson <gphat@cpan.org>

Infinity Interactive, L<http://www.iinteractive.com>

=head1 COPYRIGHT & LICENSE

Copyright 2008 by Infinity Interactive, Inc.

L<http://www.iinteractive.com>

You can redistribute and/or modify this code under the same terms as Perl
itself.