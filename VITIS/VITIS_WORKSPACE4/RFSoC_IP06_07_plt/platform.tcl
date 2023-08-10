# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct E:\RFSoC\GIT\RFSoC\VITIS_TEST\VITIS_WORKSPACE4\RFSoC_IP06_07_plt\platform.tcl
# 
# OR launch xsct and run below command.
# source E:\RFSoC\GIT\RFSoC\VITIS_TEST\VITIS_WORKSPACE4\RFSoC_IP06_07_plt\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {RFSoC_IP06_07_plt}\
-hw {E:\RFSoC\GIT\RFSoC\RFSoC_Design_RFDC_Test\IP_FILE_06\TEST_07\TEST_02_Block_wrapper.xsa}\
-proc {psu_cortexa53_0} -os {standalone} -arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {E:/RFSoC/GIT/RFSoC/VITIS_TEST/VITIS_WORKSPACE4}

platform write
platform generate -domains 
platform active {RFSoC_IP06_07_plt}
domain active {zynqmp_fsbl}
bsp reload
bsp setlib -name libmetal -ver 2.1
bsp write
bsp reload
catch {bsp regenerate}
platform generate
domain create -name {freertos10_xilinx_psu_cortexa53_0} -display-name {freertos10_xilinx_psu_cortexa53_0} -os {freertos10_xilinx} -proc {psu_cortexa53_0} -runtime {cpp} -arch {64-bit} -support-app {freertos_lwip_tcp_perf_server}
platform generate -domains 
platform active {RFSoC_IP06_07_plt}
domain active {zynqmp_fsbl}
domain active {zynqmp_pmufw}
domain active {standalone_domain}
domain active {freertos10_xilinx_psu_cortexa53_0}
platform generate -quick
bsp reload
bsp setlib -name libmetal -ver 2.1
bsp write
bsp reload
catch {bsp regenerate}
domain active {standalone_domain}
bsp reload
bsp reload
domain active {zynqmp_fsbl}
bsp reload
bsp reload
domain active {freertos10_xilinx_psu_cortexa53_0}
bsp setlib -name xilpm -ver 3.2
bsp setlib -name xilsecure -ver 4.3
bsp write
bsp reload
catch {bsp regenerate}
domain active {standalone_domain}
bsp setlib -name libmetal -ver 2.1
bsp setlib -name lwip211 -ver 1.3
bsp setlib -name xilsecure -ver 4.3
bsp setlib -name xilpm -ver 3.2
bsp write
bsp reload
catch {bsp regenerate}
bsp config phy_link_speed "CONFIG_LINKSPEED_AUTODETECT"
bsp reload
domain active {zynqmp_fsbl}
bsp setlib -name lwip211 -ver 1.3
bsp write
bsp reload
catch {bsp regenerate}
domain active {standalone_domain}
bsp reload
domain active {zynqmp_pmufw}
bsp reload
bsp setlib -name lwip211 -ver 1.3
bsp setlib -name libmetal -ver 2.1
bsp write
bsp reload
catch {bsp regenerate}
domain active {freertos10_xilinx_psu_cortexa53_0}
bsp reload
domain active {standalone_domain}
bsp write
domain active {zynqmp_fsbl}
bsp write
platform active {RFSoC_IP06_07_plt}
bsp reload
domain active {standalone_domain}
bsp reload
bsp reload
bsp write
platform active {RFSoC_IP06_07_plt}
bsp reload
platform active {RFSoC_IP06_07_plt}
