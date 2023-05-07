set(target_name "hello_world")
add_library(${target_name} SHARED) # SHARED for shared library loading; STATIC for static library loading
target_compile_features(${target_name}
    PUBLIC
    cxx_std_17
)
target_sources(${target_name}
    PUBLIC
    hello_world.cpp
)
target_include_directories(${target_name}
    PUBLIC
    # ${CMAKE_SOURCE_DIR}/include
    # ${IPOPT_INCLUDE_DIRS}
)
target_compile_options(${target_name}
    PUBLIC
    -fPIC # for shared library loading
)
target_link_directories(${target_name}
    PUBLIC
    # ${IPOPT_LIBRARIES}
)
target_link_libraries(${target_name}
    PUBLIC
    # spdlog::spdlog
    # Eigen3::Eigen
    # igl::core
)