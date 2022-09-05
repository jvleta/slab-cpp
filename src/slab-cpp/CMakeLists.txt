enable_language(Fortran)
add_library(SlabWrapper errint.f SLAB.FOR slab_c_wrapper.f90)
add_executable(SlabCpp main.cpp)
target_link_libraries(SlabCpp SlabWrapper)