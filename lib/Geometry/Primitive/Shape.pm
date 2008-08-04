package Geometry::Primitive::Shape;
use Moose::Role;

requires 'point_end';
requires 'point_start';
requires 'scale';

no Moose;
1;
__END__
=head1 NAME

Geometry::Primitive::Shape

=head1 DESCRIPTION

Geometry::Primitive::Shape is a geometric shape.

=head1 SYNOPSIS

  with 'Geometry::Primitive::Shape';

  has 'point_end' => '

=head1 METHODS

=over 4

=item I<grow>

Increase the size of this shape by the amount specified.  Consult the shape
implementation's documentation for this works.

=item I<point_end>

The end point of this shape.

=item I<point_start>

The starting point of this shape.



=back

=head1 AUTHOR

Cory Watson <gphat@cpan.org>

Infinity Interactive, L<http://www.iinteractive.com>

=head1 COPYRIGHT & LICENSE

Copyright 2008 by Infinity Interactive, Inc.

L<http://www.iinteractive.com>

You can redistribute and/or modify this code under the same terms as Perl
itself.