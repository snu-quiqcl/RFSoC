# Install script for directory: E:/RFSoC/GIT/RFSoC/VITIS_TEST/VITIS_WORKSPACE4/RFSoC_IP06_07_plt/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/src/libmetal

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("E:/RFSoC/GIT/RFSoC/VITIS_TEST/VITIS_WORKSPACE4/RFSoC_IP06_07_plt/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/lib/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "E:/RFSoC/GIT/RFSoC/VITIS_TEST/VITIS_WORKSPACE4/RFSoC_IP06_07_plt/zynqmp_pmufw/zynqmp_pmufw_bsp/psu_pmu_0/libsrc/libmetal_v2_1/build_libmetal/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
