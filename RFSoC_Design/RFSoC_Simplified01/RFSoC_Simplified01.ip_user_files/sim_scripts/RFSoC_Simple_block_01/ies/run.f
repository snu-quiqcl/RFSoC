-makelib ies_lib/xilinx_vip -sv \
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
-makelib ies_lib/xpm -sv \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_vip_v1_1_8 -sv \
  "../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/zynq_ultra_ps_e_vip_v1_0_8 -sv \
  "../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/da1e/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/RFSoC_Simple_block_01/ip/RFSoC_Simple_block_01_zynq_ultra_ps_e_0_0/sim/RFSoC_Simple_block_01_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ip/RFSoC_Simple_block_01_RTO_Core0_0_0/src/fifo_generator_0/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ip/RFSoC_Simple_block_01_RTO_Core0_0_0/src/fifo_generator_0/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ip/RFSoC_Simple_block_01_RTO_Core0_0_0/src/fifo_generator_0/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/RFSoC_Simple_block_01/ip/RFSoC_Simple_block_01_RTO_Core0_0_0/src/fifo_generator_0/sim/fifo_generator_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/RFSoC_Simple_block_01/ipshared/308c/src/RTO_Core0.sv" \
  "../../../bd/RFSoC_Simple_block_01/ip/RFSoC_Simple_block_01_RTO_Core0_0_0/sim/RFSoC_Simple_block_01_RTO_Core0_0_0.sv" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/RFSoC_Simple_block_01/ip/RFSoC_Simple_block_01_proc_sys_reset_0_0/sim/RFSoC_Simple_block_01_proc_sys_reset_0_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/RFSoC_Simple_block_01/ip/RFSoC_Simple_block_01_AXI2FIFO_0_0/sim/RFSoC_Simple_block_01_AXI2FIFO_0_0.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/RFSoC_Simple_block_01/sim/RFSoC_Simple_block_01.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

