# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct E:\RFSoC\GIT\RFSoC\RFSoC_Design_V1_0\VITIS\V1_0\RFSoC_Controller_V1_0\platform.tcl
# 
# OR launch xsct and run below command.
# source E:\RFSoC\GIT\RFSoC\RFSoC_Design_V1_0\VITIS\V1_0\RFSoC_Controller_V1_0\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {RFSoC_Controller_V1_0}\
-hw {E:\RFSoC\GIT\RFSoC\RFSoC_Design_V1_0\VIVADO\TEST_02_Block_wrapper.xsa}\
-proc {psu_cortexa53_0} -os {standalone} -arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {E:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_0/VITIS/V1_0}

platform write
platform generate -domains 
platform active {RFSoC_Controller_V1_0}
bsp reload
bsp setlib -name lwip211 -ver 1.3
bsp setlib -name libmetal -ver 2.1
bsp setlib -name xilpm -ver 3.2
bsp write
bsp reload
catch {bsp regenerate}
platform generate
platform active {RFSoC_Controller_V1_0}
platform generate -domains 
domain active {zynqmp_fsbl}
bsp reload
domain active {standalone_domain}
bsp reload
bsp reload
