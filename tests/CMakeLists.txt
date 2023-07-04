
if(BUILD_TESTING)
    # Tests
    file(GLOB_RECURSE unittests "${CMAKE_CURRENT_LIST_DIR}/unittests/*.cxx")
    add_executable(
    testLibB
    ${unittests}
    )
    target_link_libraries(
        testLibB
        PUBLIC
        coreLibB
        GTest::gtest_main
        GTest::gmock_main
    )

    include(GoogleTest)
    gtest_discover_tests(testLibB)
endif(BUILD_TESTING)
