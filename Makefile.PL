use inc::Module::Install 0.75;

name     'Geometry-Primitive';
all_from 'lib/Geometry/Primitive.pm';
author   'Cory Watson <gphat@cpan.org>';

build_requires 'Test::More';

test_requires 'Pod::Coverage::Moose';

requires 'Check::ISA' => '0.04';
requires 'Math::Complex' => '1.54';
requires 'Moose' => '0.57';
requires 'MooseX::AttributeHelpers' => '0.13';
requires 'MooseX::Clone' => '0.03';
requires 'MooseX::Storage' => '0.14';

auto_install;

WriteAll;

