##############################################################################
# \file  SbiaSettings.cmake
# \brief Default CMake settings used at SBIA.
#
# This file specifies the common CMake settings such as the common build
# configuration used by projects developed at SBIA. Note that this file is
# included in the root CMake file by the macro sbia_project () prior to the
# invocation of the CMake command project (). Thus, project related
# variables are not available at this point.
#
# Copyright (c) 2011 University of Pennsylvania. All rights reserved.
# See LICENSE or Copyright file in project root directory for details.
#
# Contact: SBIA Group <sbia-software -at- uphs.upenn.edu>
##############################################################################

if (NOT SBIA_SETTINGS_INCLUDED)
set (SBIA_SETTINGS_INCLUDED 1)


# get directory of this file
#
# \note This variable was just recently introduced in CMake, it is derived
#       here from the already earlier added variable CMAKE_CURRENT_LIST_FILE
#       to maintain compatibility with older CMake versions.
get_filename_component (CMAKE_CURRENT_LIST_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)


# ============================================================================
# build configuration(s)
# ============================================================================

# list of all available build configurations
set (
  CMAKE_CONFIGURATION_TYPES
    "Debug"
    "Coverage"
    "Release"
  CACHE STRING "Build configurations." FORCE
)

# list of debug configurations, used by target_link_libraries (), for example,
# to determine whether to link to the optimized or debug libraries
set (DEBUG_CONFIGURATIONS "Debug")

mark_as_advanced (CMAKE_CONFIGURATION_TYPES)
mark_as_advanced (DEBUG_CONFIGURATIONS)

if (NOT CMAKE_BUILD_TYPE MATCHES "^Debug$|^Coverage$|^Release$")
  set (CMAKE_BUILD_TYPE "Release")
endif ()

set (
  CMAKE_BUILD_TYPE
    "${CMAKE_BUILD_TYPE}"
  CACHE STRING
    "Current build configuration. Specify either \"Debug\", \"Coverage\", or \"Release\"."
  FORCE
)

# default script configuration file \see sbia_add_script ()
set (SBIA_SCRIPT_CONFIG_FILE "${CMAKE_CURRENT_LIST_DIR}/SbiaScriptConfig.cmake.in")

# ----------------------------------------------------------------------------
# common
# ----------------------------------------------------------------------------

# common compiler flags
set (CMAKE_C_FLAGS   "${CMAKE_C_FLAGS}")
set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}")

# common linker flags
set (CMAKE_EXE_LINKER_FLAGS    "${CMAKE_EXE_LINKER_FLAGS}    -lm")
set (CMAKE_MODULE_LINKER_FLAGS "${CMAKE_MODULE_LINKER_FLAGS} -lm")
set (CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} -lm")

# ----------------------------------------------------------------------------
# MinSizeRel - disabled
# ----------------------------------------------------------------------------

# compiler flags of MinSizeRel configuration
set (CMAKE_C_FLAGS_MINSIZEREL   "" CACHE INTERNAL "" FORCE)
set (CMAKE_CXX_FLAGS_MINSIZEREL "" CACHE INTERNAL "" FORCE)

# linker flags of MinSizeRel configuration
set (CMAKE_EXE_LINKER_FLAGS_MINSIZEREL    "" CACHE INTERNAL "" FORCE)
set (CMAKE_MODULE_LINKER_FLAGS_MINSIZEREL "" CACHE INTERNAL "" FORCE)
set (CMAKE_SHARED_LINKER_FLAGS_MINSIZEREL "" CACHE INTERNAL "" FORCE)

# ----------------------------------------------------------------------------
# RelWithDebInfo - disabled
# ----------------------------------------------------------------------------

# compiler flags of RelWithDebInfo configuration
set (CMAKE_C_FLAGS_RELWITHDEBINFO   "" CACHE INTERNAL "" FORCE)
set (CMAKE_CXX_FLAGS_RELWITHDEBINFO "" CACHE INTERNAL "" FORCE)

# linker flags of RelWithDebInfo configuration
set (CMAKE_EXE_LINKER_FLAGS_RELWITHDEBINFO    "" CACHE INTERNAL "" FORCE)
set (CMAKE_MODULE_LINKER_FLAGS_RELWITHDEBINFO "" CACHE INTERNAL "" FORCE)
set (CMAKE_SHARED_LINKER_FLAGS_RELWITHDEBINFO "" CACHE INTERNAL "" FORCE)

# ----------------------------------------------------------------------------
# Coverage
# ----------------------------------------------------------------------------

# compiler flags for Coverage configuration
set (CMAKE_C_FLAGS_COVERAGE   "-g -O0 -Wall -W -fprofile-arcs -ftest-coverage")
set (CMAKE_CXX_FLAGS_COVERAGE "-g -O0 -Wall -W -fprofile-arcs -ftest-coverage")

# linker flags for Coverage configuration
set (CMAKE_EXE_LINKER_FLAGS_COVERAGE    "-fprofile-arcs -ftest-coverage")
set (CMAKE_MODULE_LINKER_FLAGS_COVERAGE "-fprofile-arcs -ftest-coverage")
set (CMAKE_SHARED_LINKER_FLAGS_COVERAGE "-fprofile-arcs -ftest-coverage")


endif (NOT SBIA_SETTINGS_INCLUDED)

