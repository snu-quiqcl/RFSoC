# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct E:\RFSoC\GIT\RFSoC\RFSoC_Design_V1_1\VITIS_CPP\RFSoC_Firmware_plt\platform.tcl
# 
# OR launch xsct and run below command.
# source E:\RFSoC\GIT\RFSoC\RFSoC_Design_V1_1\VITIS_CPP\RFSoC_Firmware_plt\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {RFSoC_Firmware_plt}\
-hw {E:\RFSoC\GIT\Vivado_prj_manager\Vitis_main\RFSoC_Main_blk_wrapper.xsa}\
-proc {psu_cortexa53_0} -os {standalone} -arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {E:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/VITIS_CPP}

platform write
platform generate -domains 
platform active {RFSoC_Firmware_plt}
bsp reload
bsp setlib -name libmetal -ver 2.1
bsp setlib -name lwip211 -ver 1.3
bsp setlib -name xilpm -ver 3.2
bsp write
bsp reload
catch {bsp regenerate}
domain active {zynqmp_fsbl}
bsp reload
platform generate
domain active {standalone_domain}
bsp reload
bsp reload
platform generate
platform generate
