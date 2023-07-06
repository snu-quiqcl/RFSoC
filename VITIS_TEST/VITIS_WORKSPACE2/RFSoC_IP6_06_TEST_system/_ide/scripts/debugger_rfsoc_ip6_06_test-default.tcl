# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: E:\RFSoC\GIT\RFSoC\VITIS_TEST\VITIS_WORKSPACE2\RFSoC_IP6_06_TEST_system\_ide\scripts\debugger_rfsoc_ip6_06_test-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source E:\RFSoC\GIT\RFSoC\VITIS_TEST\VITIS_WORKSPACE2\RFSoC_IP6_06_TEST_system\_ide\scripts\debugger_rfsoc_ip6_06_test-default.tcl
# 
connect -url tcp:127.0.0.1:3121
source E:/Xilinx/Vitis/2020.2/scripts/vitis/util/zynqmp_utils.tcl
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -nocase -filter {name =~"APU*"}
reset_apu
targets -set -filter {jtag_cable_name =~ "Xilinx HW-Z1-ZCU104 FT4232H 65004A" && level==0 && jtag_device_ctx=="jsn-HW-Z1-ZCU104 FT4232H-65004A-147e0093-0"}
fpga -file E:/RFSoC/GIT/RFSoC/VITIS_TEST/VITIS_WORKSPACE2/RFSoC_IP6_06_TEST/_ide/bitstream/TEST_02_Block_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw E:/RFSoC/GIT/RFSoC/VITIS_TEST/VITIS_WORKSPACE2/RFSoC_Design_IP6_06/export/RFSoC_Design_IP6_06/hw/TEST_02_Block_wrapper.xsa -mem-ranges [list {0x80000000 0xbfffffff} {0x400000000 0x5ffffffff} {0x1000000000 0x7fffffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
set mode [expr [mrd -value 0xFF5E0200] & 0xf]
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow E:/RFSoC/GIT/RFSoC/VITIS_TEST/VITIS_WORKSPACE2/RFSoC_Design_IP6_06/export/RFSoC_Design_IP6_06/sw/RFSoC_Design_IP6_06/boot/fsbl.elf
set bp_57_43_fsbl_bp [bpadd -addr &XFsbl_Exit]
con -block -timeout 60
bpremove $bp_57_43_fsbl_bp
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow E:/RFSoC/GIT/RFSoC/VITIS_TEST/VITIS_WORKSPACE2/RFSoC_IP6_06_TEST/Debug/RFSoC_IP6_06_TEST.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A53*#0"}
con
