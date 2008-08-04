use inc::Module::Install 0.75;

name     'Geometry-Primitive';
all_from 'lib/Geometry/Primitive.pm';
author   'Cory Watson <gphat@cpan.org>';

build_requires 'Test::More';

test_requires 'Pod::Coverage::Moose';

requires 'Math::Trig' => '1.54';
requires 'Moose' => '0.54';
requires 'MooseX::AttributeHelpers' => '0.12';
requires 'MooseX::Clone' => '0.03';

auto_install;

WriteAll;

