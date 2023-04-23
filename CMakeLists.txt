cmake_minimum_required(VERSION 3.20)
project(Greeks)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)
add_subdirectory(extern/armadillo)
add_subdirectory(extern/lets_be_rational)
add_subdirectory(extern/bsplines)

include_directories(extern/bsplines)

find_package(JlCxx)

get_target_property(JlCxx_location JlCxx::cxxwrap_julia LOCATION)
get_filename_component(JlCxx_location ${JlCxx_location} DIRECTORY)
set(CMAKE_INSTALL_RPATH "${CMAKE_INSTALL_PREFIX}/lib;${JlCxx_location}")
message(STATUS "Found JlCxx at ${JlCxx_location}")

add_library(Greeks SHARED greeks.cpp)
set_target_properties(Greeks PROPERTIES COMPILE_DEFINITIONS "JLCXX_EXAMPLES_EXPORTS")

target_link_libraries(Greeks JlCxx::cxxwrap_julia lets_be_rational bspline armadillo)
