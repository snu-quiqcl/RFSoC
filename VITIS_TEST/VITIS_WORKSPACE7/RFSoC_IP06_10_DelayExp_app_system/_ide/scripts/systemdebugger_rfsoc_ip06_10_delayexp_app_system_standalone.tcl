# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: E:\RFSoC\GIT\RFSoC\VITIS_TEST\VITIS_WORKSPACE7\RFSoC_IP06_10_DelayExp_app_system\_ide\scripts\systemdebugger_rfsoc_ip06_10_delayexp_app_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source E:\RFSoC\GIT\RFSoC\VITIS_TEST\VITIS_WORKSPACE7\RFSoC_IP06_10_DelayExp_app_system\_ide\scripts\systemdebugger_rfsoc_ip06_10_delayexp_app_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
source E:/Xilinx/Vitis/2020.2/scripts/vitis/util/zynqmp_utils.tcl
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -nocase -filter {name =~"APU*"}
reset_apu
targets -set -filter {jtag_cable_name =~ "Xilinx HW-Z1-ZCU104 FT4232H 65004A" && level==0 && jtag_device_ctx=="jsn-HW-Z1-ZCU104 FT4232H-65004A-147e0093-0"}
fpga -file E:/RFSoC/GIT/RFSoC/VITIS_TEST/VITIS_WORKSPACE7/RFSoC_IP06_10_DelayExp_app/_ide/bitstream/TEST_02_Block_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw E:/RFSoC/GIT/RFSoC/VITIS_TEST/VITIS_WORKSPACE7/RFSoC_IP06_10_DelayExp_plt/export/RFSoC_IP06_10_DelayExp_plt/hw/TEST_02_Block_wrapper.xsa -mem-ranges [list {0x80000000 0xbfffffff} {0x400000000 0x5ffffffff} {0x1000000000 0x7fffffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
set mode [expr [mrd -value 0xFF5E0200] & 0xf]
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow E:/RFSoC/GIT/RFSoC/VITIS_TEST/VITIS_WORKSPACE7/RFSoC_IP06_10_DelayExp_plt/export/RFSoC_IP06_10_DelayExp_plt/sw/RFSoC_IP06_10_DelayExp_plt/boot/fsbl.elf
set bp_58_15_fsbl_bp [bpadd -addr &XFsbl_Exit]
con -block -timeout 60
bpremove $bp_58_15_fsbl_bp
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow E:/RFSoC/GIT/RFSoC/VITIS_TEST/VITIS_WORKSPACE7/RFSoC_IP06_10_DelayExp_app/Release/RFSoC_IP06_10_DelayExp_app.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A53*#0"}
con
