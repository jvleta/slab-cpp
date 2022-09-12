enable_language(Fortran)
add_library(SlabWrapper errint.f slab_data.f90 SLAB.FOR slab_fortran_wrapper.f90 slab_c_wrapper.f90)
add_executable(SlabCpp main.cpp)
target_link_libraries(SlabCpp SlabWrapper)