vcpkg_check_linkage(ONLY_STATIC_LIBRARY ONLY_DYNAMIC_CRT)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO Microsoft/DirectXTK12
    REF nov2020
    SHA512 fd49bd8f124ac5c9808f8da09a955599234712b74525fd27739135f9044883b65f4c570048a9fe335f6aa82c8d49de1e6c0e81c904696ade3cd63b1982cf4d68
    HEAD_REF master
)

vcpkg_configure_cmake(
    SOURCE_PATH ${SOURCE_PATH}
    PREFER_NINJA
    OPTIONS -DBUILD_XAUDIO_WIN10=ON
)

vcpkg_build_cmake()

file(INSTALL ${SOURCE_PATH}/Inc/ DESTINATION ${CURRENT_PACKAGES_DIR}/include/DirectXTK12)

file(GLOB_RECURSE DEBUG_LIB ${CURRENT_BUILDTREES_DIR}/${TARGET_TRIPLET}-dbg/bin/CMake/*.lib)
file(GLOB_RECURSE RELEASE_LIB ${CURRENT_BUILDTREES_DIR}/${TARGET_TRIPLET}-rel/bin/CMake/*.lib)
file(INSTALL ${DEBUG_LIB} DESTINATION ${CURRENT_PACKAGES_DIR}/debug/lib)
file(INSTALL ${RELEASE_LIB} DESTINATION ${CURRENT_PACKAGES_DIR}/lib)

file(INSTALL ${SOURCE_PATH}/LICENSE DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT} RENAME copyright)