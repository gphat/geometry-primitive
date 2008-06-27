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

  sub contains_point {
      my ($self, $point) = @_;
      
      # determine if that point is inside this shape
  }

=head1 METHODS

=over 4

=item I<contains>

Implement this.

=item I<get_bounds>

Implement this.

=item I<get_path>

Implement this.

=back

=head1 AUTHOR

Cory Watson <cory.watson@iinteractive.com>

=head1 COPYRIGHT & LICENSE

Copyright 2008 by Infinity Interactive, Inc.

L<http://www.iinteractive.com>

You can redistribute and/or modify this code under the same terms as Perl
itself.