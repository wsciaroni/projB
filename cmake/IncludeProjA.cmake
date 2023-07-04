
macro(include_proj_a)
    include(FetchContent)
    FetchContent_Declare(
        ProjA
        GIT_REPOSITORY git@github.com:wsciaroni/projA.git
        GIT_TAG master
    )

    # Check to see if googletest has already been populated so we only populate it once
    FetchContent_GetProperties(ProjA)
    if(NOT ProjA_POPULATED)
        FetchContent_MakeAvailable(ProjA)
    endif()
endmacro(include_proj_a)
