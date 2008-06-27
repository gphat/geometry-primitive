package Geometry::Primitive::Util;
use Moose;

use constant PI => 4 * atan2(1, 1);

no Moose;
1;

__END__

=head1 NAME

Geometry::Primitive::Polygon

=head1 DESCRIPTION

Geometry::Primitive::Util is a collection of utility methods and constants.

=head1 SYNOPSIS

  use Geometry::Primitive::Util;

  print "pi is ".$Geometry::Primitive::Util::PI."\n";
  # No need to close the path, it's handled automatically

=head1 CONSTANTS

=over 4

=item I<PI>

The value of pi.

=back

=head1 METHODS

=head2 Class Methods

=over 4

=back

=head1 AUTHOR

Cory Watson <cory.watson@iinteractive.com>

=head1 COPYRIGHT & LICENSE

Copyright 2008 by Infinity Interactive, Inc.

L<http://www.iinteractive.com>

You can redistribute and/or modify this code under the same terms as Perl
itself.