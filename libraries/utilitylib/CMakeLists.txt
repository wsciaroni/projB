# Utility Library

configure_file(
    ${CMAKE_CURRENT_LIST_DIR}/include/BVersion.h.in
    ${CMAKE_CURRENT_LIST_DIR}/include/BVersion.h
)

file(GLOB_RECURSE UTILITY_LIB_SOURCES
    "${CMAKE_CURRENT_LIST_DIR}/include/*.h"
    "${CMAKE_CURRENT_LIST_DIR}/include/*.hpp"
    "${CMAKE_CURRENT_LIST_DIR}/source/*.cpp"
)

add_library(utilityLibB STATIC ${UTILITY_LIB_SOURCES})

target_include_directories(utilityLibB PUBLIC "${CMAKE_CURRENT_LIST_DIR}/include")
