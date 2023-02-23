-makelib xcelium_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../RFSoC_Simplified_04.gen/sources_1/bd/RFSoC_Simplified_block_04/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_8 -sv \
  "../../../../RFSoC_Simplified_04.gen/sources_1/bd/RFSoC_Simplified_block_04/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/zynq_ultra_ps_e_vip_v1_0_8 -sv \
  "../../../../RFSoC_Simplified_04.gen/sources_1/bd/RFSoC_Simplified_block_04/ipshared/da1e/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RFSoC_Simplified_block_04/ip/RFSoC_Simplified_block_04_zynq_ultra_ps_e_0_0/sim/RFSoC_Simplified_block_04_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../RFSoC_Simplified_04.gen/sources_1/bd/RFSoC_Simplified_block_04/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../RFSoC_Simplified_04.gen/sources_1/bd/RFSoC_Simplified_block_04/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RFSoC_Simplified_block_04/ip/RFSoC_Simplified_block_04_proc_sys_reset_0_0/sim/RFSoC_Simplified_block_04_proc_sys_reset_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/RFSoC_Simplified_block_04/ipshared/72fb/src/AXI2FIFO.sv" \
  "../../../bd/RFSoC_Simplified_block_04/ip/RFSoC_Simplified_block_04_AXI2FIFO_0_0/sim/RFSoC_Simplified_block_04_AXI2FIFO_0_0.sv" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../RFSoC_Simplified_04.gen/sources_1/bd/RFSoC_Simplified_block_04/ip/RFSoC_Simplified_block_04_RTO_Core0_0_0/src/fifo_generator_0/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../RFSoC_Simplified_04.gen/sources_1/bd/RFSoC_Simplified_block_04/ip/RFSoC_Simplified_block_04_RTO_Core0_0_0/src/fifo_generator_0/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../RFSoC_Simplified_04.gen/sources_1/bd/RFSoC_Simplified_block_04/ip/RFSoC_Simplified_block_04_RTO_Core0_0_0/src/fifo_generator_0/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RFSoC_Simplified_block_04/ip/RFSoC_Simplified_block_04_RTO_Core0_0_0/src/fifo_generator_0/sim/fifo_generator_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/RFSoC_Simplified_block_04/ipshared/bb14/src/RTO_Core0.sv" \
  "../../../bd/RFSoC_Simplified_block_04/ip/RFSoC_Simplified_block_04_RTO_Core0_0_0/sim/RFSoC_Simplified_block_04_RTO_Core0_0_0.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RFSoC_Simplified_block_04/sim/RFSoC_Simplified_block_04.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

