package Geometry::Primitive::Shape;
use Moose::Role;

# requires 'contains_point';
# requires 'get_bounds';
requires 'get_points';

no Moose;
1;
__END__
=head1 NAME

Geometry::Primitive::Shape

=head1 DESCRIPTION

Geometry::Primitive::Shape is a geometric shape.

=head1 SYNOPSIS

  with 'Geometry::Primitive::Shape';

  sub get_points {
      my ($self, $point) = @_;
      
      # return an array of points that define this shape
  }

=head1 METHODS

=over 4

=item I<get_points>

Implement this.

=back

=head1 AUTHOR

Cory Watson <gphat@cpan.org>

Infinity Interactive, L<http://www.iinteractive.com>

=head1 COPYRIGHT & LICENSE

Copyright 2008 by Infinity Interactive, Inc.

L<http://www.iinteractive.com>

You can redistribute and/or modify this code under the same terms as Perl
itself.