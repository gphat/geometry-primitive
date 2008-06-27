package Geometry::Primitive::Equal;
use Moose::Role;

requires 'equal_to';

sub not_equal_to {
    my ($self, $other) = @_;
    not $self->equal_to($other);
}

no Moose;
1;
__END__
=head1 NAME

Geometry::Primitive::Equal

=head1 DESCRIPTION

Geometry::Primitive::Equal is a Moose role for equality.

=head1 SYNOPSIS

  with 'Geometry::Primitive::Equal';

  sub equal_to {
      my ($self, $other) = @_;
      
      # compare and return!
  }

=head1 METHODS

=item I<equal_to>

Implement this.

=back

=item I<not_equal_to>

Provided you implement I<equal_to>, this will be implemented for you!

=back

=head1 AUTHOR

Cory Watson <cory.watson@iinteractive.com>

=head1 COPYRIGHT & LICENSE

Copyright 2008 by Infinity Interactive, Inc.

L<http://www.iinteractive.com>

You can redistribute and/or modify this code under the same terms as Perl
itself.