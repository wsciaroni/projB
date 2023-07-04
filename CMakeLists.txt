# CMakeList.txt : Top-level CMake project file, do global configuration
# and include sub-projects here.
#
cmake_minimum_required (VERSION 3.24)

project (ProjB)

# GoogleTest requires at least C++14
set(CMAKE_CXX_STANDARD 17)

# To organize projects in VisualStudio:
if(MSVC)
    set_property(GLOBAL PROPERTY USE_FOLDERS ON)
endif(MSVC)

include(cmake/EnableGTest.cmake)
enable_gtest()

# Include sub-projects.
add_subdirectory ("${CMAKE_CURRENT_LIST_DIR}/libraries")
add_subdirectory ("${CMAKE_CURRENT_LIST_DIR}/applications")

add_subdirectory ("${CMAKE_CURRENT_LIST_DIR}/tests")

FetchContent_SetPopulated(
    ProjB
    SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}
    BINARY_DIR ${CMAKE_CURRENT_BINARY_DIR}
)

include (cmake/IncludeProjA.cmake)
include_proj_a()
