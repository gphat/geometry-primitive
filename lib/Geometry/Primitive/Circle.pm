package Geometry::Primitive::Circle;
use Moose;
use MooseX::AttributeHelpers;
use MooseX::Storage;

use Math::Trig ':pi';

extends 'Geometry::Primitive::Arc';

with Storage(format => 'JSON', io => 'File');

has '+angle_start' => ( default => sub { 0 } );
has '+angle_end' => ( default => sub { pi2 } );

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

override('scale', sub {
    my ($self, $amount) = @_;

    return Geometry::Primitive::Circle->new(
        radius => $self->radius * $amount
    );
});

__PACKAGE__->meta->make_immutable;

no Moose;
1;

__END__

=head1 NAME

Geometry::Primitive::Circle - A Circle

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

=item I<angle_end>

Set/Get the end angle for this circle.  Defaults to pi * 2 (or it wouldn't be
a circle).

=item I<angle_start>

Set/Get the start andle for this circle.  Defaults to 0 (or it wouldn't be a 
circle)

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