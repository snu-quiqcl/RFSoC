# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct E:\RFSoC\GIT\RFSoC\VITIS_TEST\VITIS_WORKSPACE3\RFSoC_IP06_07_plt\platform.tcl
# 
# OR launch xsct and run below command.
# source E:\RFSoC\GIT\RFSoC\VITIS_TEST\VITIS_WORKSPACE3\RFSoC_IP06_07_plt\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {RFSoC_IP06_07_plt}\
-hw {E:\RFSoC\GIT\RFSoC\RFSoC_Design_RFDC_Test\IP_FILE_06\TEST_07\TEST_02_Block_wrapper.xsa}\
-proc {psu_cortexa53_0} -os {standalone} -arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {E:/RFSoC/GIT/RFSoC/VITIS_TEST/VITIS_WORKSPACE3}

platform write
platform generate -domains 
platform active {RFSoC_IP06_07_plt}
platform generate
