set(IGL_VERSION 2.4.0)
find_package(LIBIGL ${IGL_VERSION} QUIET)

if(NOT TARGET igl::core)
  message(STATUS "${PROJECT_NAME} fetch libigl ${IGL_VERSION} ")
  include(FetchContent)
  FetchContent_Declare(
    libigl
    GIT_REPOSITORY https://github.com/libigl/libigl.git
    GIT_TAG v${IGL_VERSION}
    GIT_SHALLOW TRUE
    UPDATE_COMMAND ""
  )
  FetchContent_MakeAvailable(libigl)
else()
  message(STATUS "${PROJECT_NAME} igl ${IGL_VERSION} FOUND ")
endif(NOT TARGET igl::core)