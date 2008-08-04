package Geometry::Primitive::Util;

BEGIN {
    use Exporter;

    use vars qw(@EXPORT @EXPORT_OK %EXPORT_TAGS);

    @ISA = qw(Exporter);
    @EXPORT = qw();
    @EXPORT_OK = qw(
        PI
    );
    %EXPORT_TAGS = qw();
}

use constant PI => 4 * atan2(1, 1);

sub degrees_to_radians {
    my ($self, $degs) = @_;

    return $degs * (PI / 180);
}

sub max {
    my ($self, $a, $b);

    $a > $b ? $a : $b;
}

sub min {
    my ($self, $a, $b);

    $a < $b ? $a : $b;
}

sub radians_to_degrees {
    my ($self, $rads) = @_;

    return $rads * (180 / PI);
}

1;

__END__

=head1 NAME

Geometry::Primitive::Util

=head1 DESCRIPTION

Geometry::Primitive::Util is a collection of utility methods and constants.

=head1 SYNOPSIS

  use Geometry::Primitive::Util qw(PI);

  print "pi is ".PI."\n";

=head1 CONSTANTS

=over 4

=item I<PI>

The value of pi.

=back

=head1 METHODS

=over 4

=item I<degrees_to_radians>

Convert degrees to radians

=item I<max ($a, $b)>

Returns the larger of the two supplied values.

=item I<min ($a, $b)>

Returns the smaller of the two supplied values.

=item I<radians_to_degrees>

Convert radians to degrees

=back

=head1 AUTHOR

Cory Watson <gphat@cpan.org>

Infinity Interactive, L<http://www.iinteractive.com>

=head1 COPYRIGHT & LICENSE

Copyright 2008 by Infinity Interactive, Inc.

L<http://www.iinteractive.com>

You can redistribute and/or modify this code under the same terms as Perl
itself.