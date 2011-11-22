##############################################################################
# @file  BasisProject.cmake
# @brief Meta-data of this BASIS project.
#
# This file defines project meta-data, i.e., attributes, which are used by
# BASIS to setup the project. Moreover, if the project is a module of another
# BASIS project, the dependencies to other modules have to be specified here
# such that the (super-)project can analyze the inter-module dependencies.
# However, not only dependencies to other modules can be specified here,
# but also dependencies on external packages. A more flexible alternative to
# resolve external dependencies is to add the corresponding CMake statements
# to the Settings.cmake file. This should only be done if required.
#
# Copyright (c) 2011 University of Pennsylvania. All rights reserved.
# See https://www.rad.upenn.edu/sbia/software/license.html or COPYING file.
#
# Contact: SBIA Group <sbia-software at uphs.upenn.edu>
##############################################################################

# Note: The #Add*DependencyHere patterns are required by the basisproject tool
#       and should be kept at the end of the corresponding line.

basis_project (
  NAME             "ReplaceByProjectName"
  VERSION          "0.0.0"
  DESCRIPTION      "ReplaceByProjectDescription"
  DEPENDS          #AddDependencyHere
  OPTIONAL_DEPENDS #AddOptionalDependencyHere
  TEST_DEPENDS     #AddTestDependencyHere
)