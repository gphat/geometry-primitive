package Geometry::Primitive::Ellipse;
use Moose;
use MooseX::AttributeHelpers;
use MooseX::Storage;

use Math::Trig ':pi';

with Storage(format => 'JSON', io => 'File');

has 'height' => ( is => 'rw', isa => 'Num', default => sub { 0 });
has 'origin' => (
    is => 'rw', isa => 'Geometry::Primitive::Point', coerce => 1
);
has 'width' => ( is => 'rw', isa => 'Num', default => sub { 0 });

sub area {
    my ($self) = @_;
    return (pi * $self->width * $self->height) / 4;
};

sub scale {
    my ($self, $amount) = @_;

    return Geometry::Primitive::Ellipse->new(
        height => $self->height * $amount,
        width => $self->width * $amount
    );
}

__PACKAGE__->meta->make_immutable;

no Moose;
1;

__END__

=head1 NAME

Geometry::Primitive::Ellipse - An Ellipse

=head1 DESCRIPTION

Geometry::Primitive::Ellipse represents an elliptical conic section.

=head1 SYNOPSIS

  use Geometry::Primitive::Ellipse;

  my $ellipse = Geometry::Primitive::Ellipse->new(
      width => 15,
      height => 10
  );
  print $ellipse->area;

=head1 METHODS

=head2 Constructor

=over 4

=item I<new>

Creates a new Geometry::Primitive::Ellipse

=back

=head2 Instance Methods

=over 4

=item I<area>

Returns the area of this ellipse.

=item I<height>

Set/Get the height of this ellipse.

=item I<origin>

Set/Get the origin of this ellipse.

=item I<scale ($amount)>

Returns a new ellipse whose radius is $amount times bigger than this one.

=item I<width>

Set/Get the width of this ellipse.

=back

=head1 AUTHOR

Cory Watson <gphat@cpan.org>

Infinity Interactive, L<http://www.iinteractive.com>

=head1 COPYRIGHT & LICENSE

Copyright 2008 by Infinity Interactive, Inc.

L<http://www.iinteractive.com>

You can redistribute and/or modify this code under the same terms as Perl
itself.