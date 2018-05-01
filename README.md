[![Build Status](https://travis-ci.org/stelim/Map-Tube-Nuremberg.svg?branch=master)](https://travis-ci.org/stelim/Map-Tube-Nuremberg)
[![Kwalitee status](http://cpants.cpanauthors.org/dist/Map-Tube-Nuremberg.png)](http://cpants.charsbar.org/dist/overview/Map-Tube-Nuremberg)
[![GitHub issues](https://img.shields.io/github/issues/stelim/Map-Tube-Nuremberg.svg)](https://github.com/stelim/Map-Tube-Nuremberg/issues)

# NAME

Map::Tube::Nuremberg - Map::Tube::Nuremberg - interface to the Nuremberg U-Bahn map

# VERSION

version 0.06

# DESCRIPTION

It currently provides functionality to find the shortest route between
the two given stations. The map contains currently only (U-Bahn) subway stations.

# CONSTRUCTOR

    use Map::Tube::Nuremberg;
    my $tube = Map::Tube::Nuremberg->new;

# METHODS

## get\_shortest\_route(_START_, _END_)

This method expects two parameters _START_ and _END_ station name.
Station names are case insensitive. The station sequence from _START_
to _END_ is returned.

    use Map::Tube::Nuremberg;
    my $tube = Map::Tube::Nuremberg->new;
    my $route = $tube->get_shortest_route('Rathenauplatz', 'Hauptbahnhof');
    print "Route: $route\n";

# SEE ALSO

[Map::Tube](https://metacpan.org/pod/Map::Tube).



## Development

The distribution is contained in a Git repository, so simply clone the
repository

```
$ git clone http://github.com/stelim/Map-Tube-Nuremberg.git
```

and change into the newly-created directory.

```
$ cd Map-Tube-Nuremberg
```

The project uses [`Dist::Zilla`](https://metacpan.org/pod/Dist::Zilla) to
build the distribution, hence this will need to be installed before
continuing:

```
$ cpanm Dist::Zilla
```

To install the required prequisite packages, run the following set of
commands:

```
$ dzil authordeps --missing | cpanm
$ dzil listdeps --author --missing | cpanm
```

The distribution can be tested like so:

```
$ dzil test
```

To run the full set of tests (including author and release-process tests),
add the `--author` and `--release` options:

```
$ dzil test --author --release
```

# AUTHOR

Stefan Limbacher <stelim@cpan.org>

# COPYRIGHT AND LICENSE

This software is Copyright (c) 2018 by Stefan Limbacher.

This is free software, licensed under:

    The Artistic License 2.0 (GPL Compatible)
