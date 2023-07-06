# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct E:\RFSoC\GIT\RFSoC\VITIS_TEST\VITIS_WORKSPACE2\RFSoC_Design_IP6_06\platform.tcl
# 
# OR launch xsct and run below command.
# source E:\RFSoC\GIT\RFSoC\VITIS_TEST\VITIS_WORKSPACE2\RFSoC_Design_IP6_06\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {RFSoC_Design_IP6_06}\
-hw {E:\RFSoC\GIT\RFSoC\RFSoC_Design_RFDC_Test\IP_FILE_06\TEST_06\TEST_02_Block_wrapper.xsa}\
-proc {psu_cortexa53_0} -os {standalone} -arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {E:/RFSoC/GIT/RFSoC/VITIS_TEST/VITIS_WORKSPACE2}

platform write
platform generate -domains 
platform active {RFSoC_Design_IP6_06}
domain active {zynqmp_fsbl}
bsp reload
bsp setlib -name libmetal -ver 2.1
bsp write
bsp reload
catch {bsp regenerate}
platform generate
platform generate
platform active {RFSoC_Design_IP6_06}
bsp reload
domain active {standalone_domain}
bsp reload
domain active {zynqmp_fsbl}
bsp write
platform generate -domains 
