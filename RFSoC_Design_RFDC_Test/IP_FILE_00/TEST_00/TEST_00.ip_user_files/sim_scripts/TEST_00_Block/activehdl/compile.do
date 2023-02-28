vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_8
vlib activehdl/zynq_ultra_ps_e_vip_v1_0_8
vlib activehdl/xil_defaultlib
vlib activehdl/fifo_generator_v13_2_5
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_22
vlib activehdl/axi_data_fifo_v2_1_21
vlib activehdl/axi_crossbar_v2_1_23
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_8 activehdl/axi_vip_v1_1_8
vmap zynq_ultra_ps_e_vip_v1_0_8 activehdl/zynq_ultra_ps_e_vip_v1_0_8
vmap xil_defaultlib activehdl/xil_defaultlib
vmap fifo_generator_v13_2_5 activehdl/fifo_generator_v13_2_5
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_22 activehdl/axi_register_slice_v2_1_22
vmap axi_data_fifo_v2_1_21 activehdl/axi_data_fifo_v2_1_21
vmap axi_crossbar_v2_1_23 activehdl/axi_crossbar_v2_1_23
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_8  -sv2k12 "+incdir+../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_8  -sv2k12 "+incdir+../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/da1e/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/TEST_00_Block/ip/TEST_00_Block_zynq_ultra_ps_e_0_0/sim/TEST_00_Block_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ip/TEST_00_Block_DAC_Controller_0_0/ip/fifo_generator_3/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ip/TEST_00_Block_DAC_Controller_0_0/ip/fifo_generator_3/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ip/TEST_00_Block_DAC_Controller_0_0/ip/fifo_generator_3/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/TEST_00_Block/ip/TEST_00_Block_DAC_Controller_0_0/ip/fifo_generator_3/sim/fifo_generator_3.v" \
"../../../bd/TEST_00_Block/ip/TEST_00_Block_DAC_Controller_0_0/ip/fifo_generator_2/sim/fifo_generator_2.v" \
"../../../bd/TEST_00_Block/ip/TEST_00_Block_DAC_Controller_0_0/ip/fifo_generator_1/sim/fifo_generator_1.v" \
"../../../bd/TEST_00_Block/ip/TEST_00_Block_DAC_Controller_0_0/ip/fifo_generator_0/sim/fifo_generator_0.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/TEST_00_Block/ipshared/82f7/new/AXI2FIFO.sv" \
"../../../bd/TEST_00_Block/ipshared/82f7/new/GPO_Core.sv" \
"../../../bd/TEST_00_Block/ipshared/82f7/new/RFDC_Controller.sv" \
"../../../bd/TEST_00_Block/ipshared/82f7/new/RTO_Core.sv" \
"../../../bd/TEST_00_Block/ipshared/82f7/new/DAC_Controller.sv" \
"../../../bd/TEST_00_Block/ip/TEST_00_Block_DAC_Controller_0_0/sim/TEST_00_Block_DAC_Controller_0_0.sv" \
"../../../bd/TEST_00_Block/ipshared/7ff7/AXI2COM.sv" \
"../../../bd/TEST_00_Block/ipshared/7ff7/Timestamp_Counter.sv" \
"../../../bd/TEST_00_Block/ipshared/7ff7/TimeController.sv" \
"../../../bd/TEST_00_Block/ip/TEST_00_Block_TimeController_0_0/sim/TEST_00_Block_TimeController_0_0.sv" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_22  -v2k5 "+incdir+../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_21  -v2k5 "+incdir+../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_23  -v2k5 "+incdir+../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/TEST_00_Block/ip/TEST_00_Block_xbar_0/sim/TEST_00_Block_xbar_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/TEST_00_Block/ip/TEST_00_Block_rst_ps8_0_96M_0/sim/TEST_00_Block_rst_ps8_0_96M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_00.gen/sources_1/bd/TEST_00_Block/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/TEST_00_Block/sim/TEST_00_Block.v" \

vlog -work xil_defaultlib \
"glbl.v"

