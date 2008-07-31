package Geometry::Primitive::Shape;
use Moose::Role;

requires 'point_end';
requires 'point_start';

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

=item 

=back

=head1 AUTHOR

Cory Watson <gphat@cpan.org>

Infinity Interactive, L<http://www.iinteractive.com>

=head1 COPYRIGHT & LICENSE

Copyright 2008 by Infinity Interactive, Inc.

L<http://www.iinteractive.com>

You can redistribute and/or modify this code under the same terms as Perl
itself.