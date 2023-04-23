# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/heap
    REF boost-1.74.0
    SHA512 239d49d34c7d8300569b67fd979ac81cf5cefdd573787094b46b587384afc6881bd67bb9ffbc99da330b2ff45427a50782cc45c7b83c2a316936abed07bd4db3
    HEAD_REF master
    PATCHES 0002-Fix-compilation-on-MSVC-in-node_disposer.patch
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})