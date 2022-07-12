cmake_minimum_required(VERSION 3.20)

enable_language(Fortran)
project(SlabWrapper)

add_library(SlabWrapper SLAB.FOR slabwrapper.f90)
add_executable(Slab runslab.f90)
target_link_libraries(Slab SlabWrapper)