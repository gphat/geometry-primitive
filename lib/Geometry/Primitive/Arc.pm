package Geometry::Primitive::Arc;
use Moose;

use MooseX::AttributeHelpers;

extends 'Geometry::Primitive';

has 'angle_start' => ( is => 'rw', isa => 'Num' );
has 'angle_end' => ( is => 'rw', isa => 'Num' );
has 'radius' => ( is => 'rw', isa => 'Num' );

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
      angle_start => 45,
      angle_end => 65,
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

The starting angle for this arc.

=item I<angle_end>

The ending angle for this arc.

=item I<radius>

Returns the radius of the arc.

=back

=head1 AUTHOR

Cory Watson <cory.watson@iinteractive.com>

=head1 COPYRIGHT & LICENSE

Copyright 2008 by Infinity Interactive, Inc.

L<http://www.iinteractive.com>

You can redistribute and/or modify this code under the same terms as Perl
itself.