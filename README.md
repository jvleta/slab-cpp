# slab-cpp

[![Build](https://github.com/jvleta/slab-cpp/actions/workflows/cmake.yml/badge.svg)](https://github.com/jvleta/slab-cpp/actions/workflows/cmake.yml)

This project is my attempt at porting the original Slab solver from FORTRAN-77 to C++.

From original README of Slab project:

The SLAB model has been developed to simulate the atmospheric
dispersion of denser-than-air releases over flat terrain.  The
model treats continuous, finite duration, and instantaneous
releases from four types of sources: an evaporating pool, an
elevated horizontal jet, a stack or vertical jet, and an
instantaneous volume source.  While the model is designed to treat
denser-than-air releases, it will also simulate cloud dispersion
of neutrally-buoyant releases.  Consequently, a typical SLAB
simulation covers both the near-field dense gas phase and the far-
field passive gas phase.

See [epa.gov site](https://www.epa.gov/scram/air-quality-dispersion-modeling-alternative-models) site for additional detail.
