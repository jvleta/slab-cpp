cmake_minimum_required(VERSION 3.20)

project(SlabWrapper)

set (CMAKE_CXX_STANDARD 20)


add_subdirectory(src)
# add_subdirectory(test)

#add_library(SlabWrapper SLAB.FOR slabwrapper.f90)
#add_executable(Slab runslab.f90)
#target_link_libraries(Slab SlabWrapper)