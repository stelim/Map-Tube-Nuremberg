#!perl -T

#use v5.10;

use strict;
use warnings FATAL => 'all';

use utf8;

use Test::More;

my $min_ver = 0.35;
eval "use Test::Map::Tube $min_ver tests => 3";
plan skip_all => "Test::Map::Tube $min_ver required." if $@;

use utf8;
use Map::Tube::Nuremberg;
my $map = Map::Tube::Nuremberg->new;
ok_map($map);
ok_map_functions($map);

my @routes = <DATA>;
diag ok_map_routes($map, \@routes);

diag $map->get_shortest_route('Hauptbahnhof', 'Opernhaus');
diag $map->get_shortest_route('Opernhaus', 'Aufseßplatz');
diag $map->get_shortest_route('Maxfeld','Rathenauplatz');
diag $map->get_shortest_route('Maxfeld','Rennweg');
diag $map->get_shortest_route('Hauptbahnhof','Kaulbachplatz');


__DATA__
Route 1|Hauptbahnhof|Opernhaus|Hauptbahnhof,Opernhaus
Route 2|Opernhaus|Aufseßplatz|Opernhaus,Hauptbahnhof,Aufseßplatz
Route 3|Maxfeld|Rathenauplatz|Maxfeld,Rathenauplatz
Route 4|Maxfeld|Rennweg|Maxfeld,Rathenauplatz,Rennweg
Route 5|Hauptbahnhof|Kaulbachplatz|Hauptbahnhof,Wöhrder Wiese,Rathenauplatz,Maxfeld,Kaulbachplatz