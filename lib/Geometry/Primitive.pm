package Geometry::Primitive;
use Moose;

our $VERSION = '0.01';


=head1 NAME

Geometry::Primitive - Primitive Geometry Entities

=head1 VERSION

Version 0.01

=head1 SYNOPSIS

Geometry::Primitive is a device and library agnostic system for representing
geometric entities such as points, lines and shapes.  It provides simple
objects and many convenience methods you would expect for a geometry library.

    use Geometry::Primitive::Point;

    my $foo = Geometry::Primitive::Point->new(x => 1, y => 3);
    ...

=head1 DISCLAIMER

I'm not a math guy. I hate math.  I will likely learn a lot in the process
of making this library. If you are a math person you will probably look at
this and find many things missing or wrong. Patches are encouraged. I will
likely find that I've done something completely wrong having taken geometry
over 10 years ago.  C'est la vie.

=head1 ENTITIES

=over 4

=item L<Point|Geometry::Primitive::Point>

=item L<Line|Geometry::Primitive::Line>

=item L<Polygon|Geometry::Primitive::Polygon>

=item L<Arc|Geometry::Primitive::Arc>

=back

=head1 AUTHOR

Cory Watson, C<< <cory.watson at iinteractive.com> >>

=head1 ACKNOWLEDGEMENTS

Many of the ideas here come from my experience using the Cairo library.  It is
entirely possible that 

=head1 BUGS

Please report any bugs or feature requests to C<bug-geometry-primitive at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Geometry-Primitive>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.

=head1 COPYRIGHT & LICENSE

Copyright 2008 by Infinity Interactive, Inc.

L<http://www.iinteractive.com>

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.


=cut

1;
