cmake_minimum_required(VERSION 3.5)
project(bsplines VERSION 3.1.0)
set(bsplines_VERSION_MAJOR 3)
set(bsplines_VERSION_MINOR 0)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_POSITION_INDEPENDENT_CODE  ON)
include_directories(
    ${CMAKE_SOURCE_DIR}/extern/bsplines 
    ${CMAKE_SOURCE_DIR}/extern/armadillo/include)
find_package(Armadillo REQUIRED)
add_library(bspline STATIC bsplines.cpp)
add_executable(bspline_basis examples/bspline_basis.cpp)
target_link_libraries(bspline_basis bspline armadillo)
