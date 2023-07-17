# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct E:\RFSoC\GIT\RFSoC\VITIS_TEST\VITIS_WORKSPACE6\RFSoC_IP06_07_plt\platform.tcl
# 
# OR launch xsct and run below command.
# source E:\RFSoC\GIT\RFSoC\VITIS_TEST\VITIS_WORKSPACE6\RFSoC_IP06_07_plt\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {RFSoC_IP06_07_plt}\
-hw {E:\RFSoC\GIT\RFSoC\RFSoC_Design_RFDC_Test\IP_FILE_06\TEST_07\TEST_02_Block_wrapper.xsa}\
-proc {psu_cortexa53_0} -os {standalone} -arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {E:/RFSoC/GIT/RFSoC/VITIS_TEST/VITIS_WORKSPACE6}

platform write
platform generate -domains 
platform active {RFSoC_IP06_07_plt}
domain active {zynqmp_fsbl}
bsp reload
bsp reload
domain active {standalone_domain}
bsp reload
bsp setlib -name lwip211 -ver 1.3
bsp write
bsp reload
catch {bsp regenerate}
bsp reload
platform generate
platform active {RFSoC_IP06_07_plt}
domain create -name {freertos10_xilinx_psu_cortexa53_0} -display-name {freertos10_xilinx_psu_cortexa53_0} -os {freertos10_xilinx} -proc {psu_cortexa53_0} -runtime {cpp} -arch {64-bit} -support-app {freertos_lwip_echo_server}
platform generate -domains 
platform write
domain active {zynqmp_fsbl}
domain active {zynqmp_pmufw}
domain active {standalone_domain}
domain active {freertos10_xilinx_psu_cortexa53_0}
platform generate -quick
platform generate -domains freertos10_xilinx_psu_cortexa53_0 
platform generate
platform generate
platform active {RFSoC_IP06_07_plt}
bsp reload
bsp reload
platform generate -domains 
