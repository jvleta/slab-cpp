enable_language(Fortran)
add_library(slabwrapper SLAB.FOR slab_fortran_wrapper.f90 slab_c_wrapper.f90)

add_executable(demo main.cpp)
target_link_libraries(demo slabwrapper)