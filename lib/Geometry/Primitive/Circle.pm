package Geometry::Primitive::Circle;
use Moose;
use MooseX::AttributeHelpers;
use MooseX::Storage;

extends 'Geometry::Primitive';

with qw(Geometry::Primitive::Shape MooseX::Clone);
with Storage(format => 'JSON', io => 'File');

use Math::Trig ':pi';

has 'origin' => (
    is => 'rw', isa => 'Geometry::Primitive::Point', coerce => 1
);
has 'radius' => (
    is => 'rw', isa => 'Num', default => 0
);

sub area {
    my ($self) = @_;
    return $self->radius**2 * pi;
};

sub circumference {
    my ($self) = @_;

    return $self->diameter * pi;
}

sub diameter {
    my ($self) = @_;

    return $self->radius * 2;
}

sub point_end {
    my ($self) = @_;

    return Geometry::Primitive::Point->new(
        x => $self->origin->x,
        y => $self->origin->y - ($self->radius / 2)
    );
}

sub point_start {
    my ($self) = @_;

    return Geometry::Primitive::Point->new(
        x => $self->origin->x,
        y => $self->origin->y - ($self->radius / 2)
    );
}

sub scale {
    my ($self, $amount) = @_;

    return Geometry::Primitive::Circle->new(
        radius => $self->radius * $amount
    );
}

__PACKAGE__->meta->make_immutable;

no Moose;
1;

__END__

=head1 NAME

Geometry::Primitive::Circle - A Circle

=head1 DESCRIPTION

Geometry::Primitive::Circle represents an ellipse with equal width and height.

=head1 SYNOPSIS

  use Geometry::Primitive::Circle;

  my $circle = Geometry::Primitive::Circle->new(
      radius => 15
  );
  print $circle->diameter;

=head1 METHODS

=head2 Constructor

=over 4

=item I<new>

Creates a new Geometry::Primitive::Circle

=back

=head2 Instance Methods

=over 4

=item I<area>

Returns the area of this circle.

=item I<circumference>

Returns the circumference of this circle.

=item I<diameter>

Returns the diameter of this circle

=item I<scale ($amount)>

Returns a new circle whose radius is $amount times bigger than this one.

=item I<origin>

Set/Get the origin of this circle.

=item I<radius>

Set/Get the radius of this circle.

=back

=head1 AUTHOR

Cory Watson <gphat@cpan.org>

Infinity Interactive, L<http://www.iinteractive.com>

=head1 COPYRIGHT & LICENSE

Copyright 2008 by Infinity Interactive, Inc.

L<http://www.iinteractive.com>

You can redistribute and/or modify this code under the same terms as Perl
itself.