# - Try to find IPOPT
# Once done this will define
#  IPOPT_FOUND - System has IpOpt
#  IPOPT_INCLUDE_DIRS - The IpOpt include directories
#  IPOPT_LIBRARY_DIRS - The library directories needed to use IpOpt
#  IPOPT_LIBRARIES    - The libraries needed to use IpOpt

if (IPOPT_INCLUDE_DIR)
  # in cache already
  SET(IPOPT_FIND_QUIETLY TRUE)
endif (IPOPT_INCLUDE_DIR)

find_path(IPOPT_INCLUDE_DIR NAMES coin/IpNLP.hpp
    PATHS
    "$ENV{HOME}/usr/include/"
    "$ENV{HOME}/usr/include/Ipopt"
    "$ENV{HOME}/usr/Ipopt/include"
    "$ENV{HOME}/usr/Ipopt"
    ${THIRD_INCLUDE_DIR}
    )

find_library( IPOPT_LIBRARY NAMES libipopt.so 
  PATHS
  "$ENV{HOME}/usr/lib/ipopt_lib"
  "$ENV{HOME}/usr/lib"
  "$ENV{HOME}/usr/Ipopt/lib"
  ${THIRD_LIB_DIR}
  )  

if(IPOPT_INCLUDE_DIR AND IPOPT_LIBRARY)
  set(IPOPT_FOUND TRUE)
else()
  set(IPOPT_FOUND FALSE)
  message(FATAL_ERROR "Could not find IPOPT!")
endif()

set(IPOPT_INCLUDE_DIRS "${IPOPT_INCLUDE_DIR}" )
set(IPOPT_LIBRARIES "${IPOPT_LIBRARY}" )

include(FindPackageHandleStandardArgs)
# handle the QUIETLY and REQUIRED arguments and set LIBCPLEX_FOUND to TRUE
# if all listed variables are TRUE
find_package_handle_standard_args(IPOPT  DEFAULT_MSG
  IPOPT_LIBRARY IPOPT_INCLUDE_DIR)

mark_as_advanced(IPOPT_INCLUDE_DIR IPOPT_LIBRARY)
  