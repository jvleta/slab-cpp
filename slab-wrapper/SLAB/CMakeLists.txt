cmake_minimum_required(VERSION 3.20)

enable_language(Fortran)
project(fortranTest)

add_executable(Slab SLAB.FOR runslab.f90)