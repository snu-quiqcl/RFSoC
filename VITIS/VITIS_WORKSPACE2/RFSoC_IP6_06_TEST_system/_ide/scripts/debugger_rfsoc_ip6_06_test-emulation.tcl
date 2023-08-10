# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: E:\RFSoC\GIT\RFSoC\VITIS_TEST\VITIS_WORKSPACE2\RFSoC_IP6_06_TEST_system\_ide\scripts\debugger_rfsoc_ip6_06_test-emulation.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source E:\RFSoC\GIT\RFSoC\VITIS_TEST\VITIS_WORKSPACE2\RFSoC_IP6_06_TEST_system\_ide\scripts\debugger_rfsoc_ip6_06_test-emulation.tcl
# 
connect -url tcp:localhost:4352
targets 3
dow E:/RFSoC/GIT/RFSoC/VITIS_TEST/VITIS_WORKSPACE2/RFSoC_IP6_06_TEST/Debug/RFSoC_IP6_06_TEST.elf
mask_write 0xfd1a0104 [expr (0x401 << 0) | 0x100] 0
targets 3
con
