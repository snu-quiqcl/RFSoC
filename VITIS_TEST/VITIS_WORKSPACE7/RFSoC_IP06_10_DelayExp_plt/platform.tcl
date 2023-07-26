# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct E:\RFSoC\GIT\RFSoC\VITIS_TEST\VITIS_WORKSPACE7\RFSoC_IP06_10_DelayExp_plt\platform.tcl
# 
# OR launch xsct and run below command.
# source E:\RFSoC\GIT\RFSoC\VITIS_TEST\VITIS_WORKSPACE7\RFSoC_IP06_10_DelayExp_plt\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {RFSoC_IP06_10_DelayExp_plt}\
-hw {E:\RFSoC\GIT\RFSoC\RFSoC_Design_RFDC_Test\IP_FILE_06\TEST_10\TEST_02_Block_wrapper.xsa}\
-proc {psu_cortexa53_0} -os {standalone} -arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {E:/RFSoC/GIT/RFSoC/VITIS_TEST/VITIS_WORKSPACE7}

platform write
platform generate -domains 
platform active {RFSoC_IP06_10_DelayExp_plt}
domain active {zynqmp_fsbl}
bsp reload
domain active {standalone_domain}
bsp reload
domain active {zynqmp_fsbl}
bsp setlib -name lwip211 -ver 1.3
bsp config lwip_tcp_keepalive "true"
bsp config no_sys_no_timers "true"
bsp config lwip_tcp_keepalive "true"
bsp reload
platform generate
bsp setlib -name lwip211 -ver 1.3
bsp write
bsp reload
catch {bsp regenerate}
domain active {standalone_domain}
bsp reload
platform generate -domains zynqmp_fsbl 
platform active {RFSoC_IP06_10_DelayExp_plt}
bsp reload
bsp setlib -name lwip211 -ver 1.3
bsp setlib -name xilpm -ver 3.2
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_domain 
