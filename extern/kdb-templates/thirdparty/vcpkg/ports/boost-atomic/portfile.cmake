# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/atomic
    REF boost-1.74.0
    SHA512 96e68016aac2f059a0fd8423a9c3f92c2fc7a10bad9f15e8c796076bacb4de3c7c322b6dc1013962548020af9bf0c8b59353c72732c05eb8d2cd6a02100a50de
    HEAD_REF master
)

include(${CURRENT_INSTALLED_DIR}/share/boost-build/boost-modular-build.cmake)
boost_modular_build(SOURCE_PATH ${SOURCE_PATH})
include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})