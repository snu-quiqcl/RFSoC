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
  "../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_8 -sv \
  "../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/zynq_ultra_ps_e_vip_v1_0_8 -sv \
  "../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/da1e/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/TEST_00_Block/ip/TEST_00_Block_zynq_ultra_ps_e_0_0/sim/TEST_00_Block_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_22 \
  "../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_5 \
  "../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_21 \
  "../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_23 \
  "../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/TEST_00_Block/ip/TEST_00_Block_xbar_0/sim/TEST_00_Block_xbar_0.v" \
  "../../../bd/TEST_00_Block/ip/TEST_00_Block_DAC_Controller_0_0/ip/fifo_generator_3/sim/fifo_generator_3.v" \
  "../../../bd/TEST_00_Block/ip/TEST_00_Block_DAC_Controller_0_0/ip/fifo_generator_2/sim/fifo_generator_2.v" \
  "../../../bd/TEST_00_Block/ip/TEST_00_Block_DAC_Controller_0_0/ip/fifo_generator_1/sim/fifo_generator_1.v" \
  "../../../bd/TEST_00_Block/ip/TEST_00_Block_DAC_Controller_0_0/ip/fifo_generator_0/sim/fifo_generator_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/TEST_00_Block/ipshared/8f98/new/AXI2FIFO.sv" \
  "../../../bd/TEST_00_Block/ipshared/8f98/new/GPO_Core.sv" \
  "../../../bd/TEST_00_Block/ipshared/8f98/new/RFDC_Controller.sv" \
  "../../../bd/TEST_00_Block/ipshared/8f98/new/RTO_Core.sv" \
  "../../../bd/TEST_00_Block/ipshared/8f98/new/DAC_Controller.sv" \
  "../../../bd/TEST_00_Block/ip/TEST_00_Block_DAC_Controller_0_0/sim/TEST_00_Block_DAC_Controller_0_0.sv" \
  "../../../bd/TEST_00_Block/ipshared/cc27/AXI2COM.sv" \
  "../../../bd/TEST_00_Block/ipshared/cc27/Timestamp_Counter.sv" \
  "../../../bd/TEST_00_Block/ipshared/cc27/TimeController.sv" \
  "../../../bd/TEST_00_Block/ip/TEST_00_Block_TimeController_0_0/sim/TEST_00_Block_TimeController_0_0.sv" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/TEST_00_Block/ip/TEST_00_Block_rst_ps8_0_96M_0/sim/TEST_00_Block_rst_ps8_0_96M_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/TEST_00_Block/sim/TEST_00_Block.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

