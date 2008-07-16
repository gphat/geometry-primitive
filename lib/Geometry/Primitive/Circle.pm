package Geometry::Primitive::Circle;
use Moose;

use MooseX::AttributeHelpers;

extends 'Geometry::Primitive::Arc';

has '+angle_start' => ( default => sub { 0 } );
has '+angle_end' => ( default => sub { 360 } );

sub diameter {
    my ($self) = @_;

    return $self->radius * 2;
}

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

=item I<diameter>

Returns the diameter of this circle

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