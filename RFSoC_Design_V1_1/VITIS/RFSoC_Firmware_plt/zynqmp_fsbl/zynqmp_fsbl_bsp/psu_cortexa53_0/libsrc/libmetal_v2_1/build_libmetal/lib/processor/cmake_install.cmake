# Install script for directory: E:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/VITIS/RFSoC_Firmware_plt/zynqmp_fsbl/zynqmp_fsbl_bsp/psu_cortexa53_0/libsrc/libmetal_v2_1/src/libmetal/lib/processor

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
  include("E:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/VITIS/RFSoC_Firmware_plt/zynqmp_fsbl/zynqmp_fsbl_bsp/psu_cortexa53_0/libsrc/libmetal_v2_1/build_libmetal/lib/processor/arm/cmake_install.cmake")

endif()

