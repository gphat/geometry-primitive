use inc::Module::Install;

name     'Geometry-Primitive';
all_from 'lib/Geometry/Primitive.pm';
author   'Cory Watson <cory.watson@iinteractive.com>';

build_requires 'Test::More';

test_requires 'Pod::Coverage::Moose';

requires 'Moose';
requires 'MooseX::AttributeHelpers';

auto_install;

WriteAll;

