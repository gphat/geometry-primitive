package Geometry::Primitive::Circle;
use Moose;

use MooseX::AttributeHelpers;

use Geometry::Primitive::Util qw(PI);

extends 'Geometry::Primitive::Arc';

has '+angle_start' => ( default => sub { 0 } );
has '+angle_end' => ( default => sub { 360 } );

sub area {
    my ($self) = @_;
    return $self->radius**2 * PI;
};

sub circumference {
    my ($self) = @_;

    return $self->diameter * PI;
}

sub diameter {
    my ($self) = @_;

    return $self->radius * 2;
}

sub grow {
    my ($self, $amount) = @_;

    $self-> radius($self->radius + ($amount / 2));
}

__PACKAGE__->meta->make_immutable;

no Moose;
1;

__END__

=head1 NAME

Geometry::Primitive::Circle

=head1 DESCRIPTION

Geometry::Primitive::Circle represents a closed arc

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

Creates a new Geometry::Primitive::Arc

=back

=head2 Instance Methods

=over 4

=item I<area>

Returns the area of this circle.

=item I<circumference>

Returns the circumference of this circle.

=item I<diameter>

Returns the diameter of this circle

=item I<grow>

Increases the diameter of the circle by the specified amount.

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