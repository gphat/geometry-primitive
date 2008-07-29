package Geometry::Primitive::Point;
use Moose;

extends 'Geometry::Primitive';

with qw(Geometry::Primitive::Equal MooseX::Clone);

has 'x' => ( is => 'rw', isa => 'Num' );
has 'y' => ( is => 'rw', isa => 'Num' );

sub equal_to {
    my ($self, $other) = @_;

    return (($self->x == $other->x) && $self->y == $other->y);
}

sub to_string {
    my ($self) = @_;

    return $self->x.','.$self->y;
}

no Moose;
1;

=head1 NAME

Geometry::Primitive::Point

=head1 DESCRIPTION

Geometry::Primitive::Point represents a location in two dimensional space.

=head1 SYNOPSIS

  use Geometry::Primitive::Point;

  my $point = Geometry::Primitive::Point->new({ x => 2, y => 0 });

=head1 METHODS

=head2 Constructor

=over 4

=item I<new>

Creates a new Geometry::Primitive::Point.

=back

=head2 Instance Methods

=over 4

=item I<equal_to>

Compares this point to another.

=item I<to_string>

Return this point as a string $x,$y

=item I<x>

Set/Get the X value.

=item I<y>

Set/Get the Y value.

=back

=head1 AUTHOR

Cory Watson <gphat@cpan.org>

Infinity Interactive, L<http://www.iinteractive.com>

=head1 COPYRIGHT & LICENSE

Copyright 2008 by Infinity Interactive, Inc.

L<http://www.iinteractive.com>

You can redistribute and/or modify this code under the same terms as Perl
itself.
