vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/xbip_utils_v3_0_10
vlib activehdl/axi_utils_v2_0_6
vlib activehdl/xbip_pipe_v3_0_6
vlib activehdl/xbip_bram18k_v3_0_6
vlib activehdl/mult_gen_v12_0_16
vlib activehdl/xbip_dsp48_wrapper_v3_0_4
vlib activehdl/xbip_dsp48_addsub_v3_0_6
vlib activehdl/xbip_dsp48_multadd_v3_0_6
vlib activehdl/dds_compiler_v6_0_20
vlib activehdl/xil_defaultlib
vlib activehdl/fifo_generator_v13_2_5
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_22
vlib activehdl/axi_data_fifo_v2_1_21
vlib activehdl/axi_crossbar_v2_1_23
vlib activehdl/axi_protocol_converter_v2_1_22
vlib activehdl/axi_clock_converter_v2_1_21
vlib activehdl/blk_mem_gen_v8_4_4
vlib activehdl/axi_dwidth_converter_v2_1_22
vlib activehdl/axi_vip_v1_1_8
vlib activehdl/zynq_ultra_ps_e_vip_v1_0_8

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap xbip_utils_v3_0_10 activehdl/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 activehdl/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 activehdl/xbip_pipe_v3_0_6
vmap xbip_bram18k_v3_0_6 activehdl/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_16 activehdl/mult_gen_v12_0_16
vmap xbip_dsp48_wrapper_v3_0_4 activehdl/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 activehdl/xbip_dsp48_addsub_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 activehdl/xbip_dsp48_multadd_v3_0_6
vmap dds_compiler_v6_0_20 activehdl/dds_compiler_v6_0_20
vmap xil_defaultlib activehdl/xil_defaultlib
vmap fifo_generator_v13_2_5 activehdl/fifo_generator_v13_2_5
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_22 activehdl/axi_register_slice_v2_1_22
vmap axi_data_fifo_v2_1_21 activehdl/axi_data_fifo_v2_1_21
vmap axi_crossbar_v2_1_23 activehdl/axi_crossbar_v2_1_23
vmap axi_protocol_converter_v2_1_22 activehdl/axi_protocol_converter_v2_1_22
vmap axi_clock_converter_v2_1_21 activehdl/axi_clock_converter_v2_1_21
vmap blk_mem_gen_v8_4_4 activehdl/blk_mem_gen_v8_4_4
vmap axi_dwidth_converter_v2_1_22 activehdl/axi_dwidth_converter_v2_1_22
vmap axi_vip_v1_1_8 activehdl/axi_vip_v1_1_8
vmap zynq_ultra_ps_e_vip_v1_0_8 activehdl/zynq_ultra_ps_e_vip_v1_0_8

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

vlog -work xpm  -sv2k12 "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xbip_utils_v3_0_10 -93 \
"../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_DAC_Controller_0_0/dds_compiler_15/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93 \
"../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_DAC_Controller_0_0/dds_compiler_15/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93 \
"../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_DAC_Controller_0_0/dds_compiler_15/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93 \
"../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_DAC_Controller_0_0/dds_compiler_15/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_16 -93 \
"../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_DAC_Controller_0_0/dds_compiler_15/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_DAC_Controller_0_0/dds_compiler_15/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93 \
"../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_DAC_Controller_0_0/dds_compiler_15/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6 -93 \
"../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_DAC_Controller_0_0/dds_compiler_15/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work dds_compiler_v6_0_20 -93 \
"../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_DAC_Controller_0_0/dds_compiler_15/hdl/dds_compiler_v6_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_DAC_Controller_0_0/dds_compiler_15/sim/dds_compiler_15.vhd" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_DAC_Controller_0_0/dds_compiler_14/sim/dds_compiler_14.vhd" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_DAC_Controller_0_0/dds_compiler_13/sim/dds_compiler_13.vhd" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_DAC_Controller_0_0/dds_compiler_12/sim/dds_compiler_12.vhd" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_DAC_Controller_0_0/dds_compiler_11/sim/dds_compiler_11.vhd" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_DAC_Controller_0_0/dds_compiler_10/sim/dds_compiler_10.vhd" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_DAC_Controller_0_0/dds_compiler_9/sim/dds_compiler_9.vhd" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_DAC_Controller_0_0/dds_compiler_8/sim/dds_compiler_8.vhd" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_DAC_Controller_0_0/dds_compiler_7/sim/dds_compiler_7.vhd" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_DAC_Controller_0_0/dds_compiler_6/sim/dds_compiler_6.vhd" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_DAC_Controller_0_0/dds_compiler_5/sim/dds_compiler_5.vhd" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_DAC_Controller_0_0/dds_compiler_4/sim/dds_compiler_4.vhd" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_DAC_Controller_0_0/dds_compiler_3/sim/dds_compiler_3.vhd" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_DAC_Controller_0_0/dds_compiler_2/sim/dds_compiler_2.vhd" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_DAC_Controller_0_0/dds_compiler_1/sim/dds_compiler_1.vhd" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_DAC_Controller_0_0/dds_compiler_0/sim/dds_compiler_0.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_DAC_Controller_0_0/fifo_generator_0/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_DAC_Controller_0_0/fifo_generator_0/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_DAC_Controller_0_0/fifo_generator_0/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_DAC_Controller_0_0/fifo_generator_0/sim/fifo_generator_0.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/RFSoC_Main_test_blk/ipshared/DAC_Controller/AXI2FIFO.sv" \
"../../../bd/RFSoC_Main_test_blk/ipshared/DAC_Controller/DAC_Controller.sv" \
"../../../bd/RFSoC_Main_test_blk/ipshared/DAC_Controller/DDS_Controller.sv" \
"../../../bd/RFSoC_Main_test_blk/ipshared/DAC_Controller/GPO_Core.sv" \
"../../../bd/RFSoC_Main_test_blk/ipshared/DAC_Controller/RFDC_DDS.sv" \
"../../../bd/RFSoC_Main_test_blk/ipshared/DAC_Controller/RTO_Core.sv" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_DAC_Controller_0_0/sim/RFSoC_Main_test_blk_DAC_Controller_0_0.sv" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_proc_sys_reset_0_0/sim/RFSoC_Main_test_blk_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/RFSoC_Main_test_blk/ipshared/TimeController/AXI2COM.sv" \
"../../../bd/RFSoC_Main_test_blk/ipshared/TimeController/TimeController.sv" \
"../../../bd/RFSoC_Main_test_blk/ipshared/TimeController/Timestamp_Counter.sv" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_TimeController_0_0/sim/RFSoC_Main_test_blk_TimeController_0_0.sv" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_22  -v2k5 "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_21  -v2k5 "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_23  -v2k5 "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_xbar_0/sim/RFSoC_Main_test_blk_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_22  -v2k5 "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_21  -v2k5 "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/1304/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_22  -v2k5 "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/2394/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_auto_ds_0/sim/RFSoC_Main_test_blk_auto_ds_0.v" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_auto_pc_0/sim/RFSoC_Main_test_blk_auto_pc_0.v" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_usp_rf_data_converter_0_0/synth/RFSoC_Main_test_blk_usp_rf_data_converter_0_0_block.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_usp_rf_data_converter_0_0/synth/RFSoC_Main_test_blk_usp_rf_data_converter_0_0_por_fsm_top.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_usp_rf_data_converter_0_0/synth/RFSoC_Main_test_blk_usp_rf_data_converter_0_0_bgt_fsm.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_usp_rf_data_converter_0_0/synth/RFSoC_Main_test_blk_usp_rf_data_converter_0_0_device_rom.sv" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_usp_rf_data_converter_0_0/synth/RFSoC_Main_test_blk_usp_rf_data_converter_0_0_por_fsm.sv" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_usp_rf_data_converter_0_0/synth/RFSoC_Main_test_blk_usp_rf_data_converter_0_0_por_fsm_disabled.sv" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_usp_rf_data_converter_0_0/synth/RFSoC_Main_test_blk_usp_rf_data_converter_0_0_tile_config.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_usp_rf_data_converter_0_0/synth/RFSoC_Main_test_blk_usp_rf_data_converter_0_0_drp_arbiter.v" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_usp_rf_data_converter_0_0/synth/RFSoC_Main_test_blk_usp_rf_data_converter_0_0_register_decode.v" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_usp_rf_data_converter_0_0/synth/RFSoC_Main_test_blk_usp_rf_data_converter_0_0_address_decoder.v" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_usp_rf_data_converter_0_0/synth/RFSoC_Main_test_blk_usp_rf_data_converter_0_0_axi_lite_ipif.v" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_usp_rf_data_converter_0_0/synth/RFSoC_Main_test_blk_usp_rf_data_converter_0_0_counter_f.v" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_usp_rf_data_converter_0_0/synth/RFSoC_Main_test_blk_usp_rf_data_converter_0_0_pselect_f.v" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_usp_rf_data_converter_0_0/synth/RFSoC_Main_test_blk_usp_rf_data_converter_0_0_slave_attachment.v" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_usp_rf_data_converter_0_0/synth/RFSoC_Main_test_blk_usp_rf_data_converter_0_0_rf_wrapper.v" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_usp_rf_data_converter_0_0/synth/RFSoC_Main_test_blk_usp_rf_data_converter_0_0_drp_control_top.v" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_usp_rf_data_converter_0_0/synth/RFSoC_Main_test_blk_usp_rf_data_converter_0_0_drp_control.v" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_usp_rf_data_converter_0_0/synth/RFSoC_Main_test_blk_usp_rf_data_converter_0_0_drp_access_ctrl.v" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_usp_rf_data_converter_0_0/synth/RFSoC_Main_test_blk_usp_rf_data_converter_0_0_irq_req_ack.v" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_usp_rf_data_converter_0_0/synth/RFSoC_Main_test_blk_usp_rf_data_converter_0_0_irq_sync.v" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_usp_rf_data_converter_0_0/synth/RFSoC_Main_test_blk_usp_rf_data_converter_0_0bufg_gt_ctrl.v" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_usp_rf_data_converter_0_0/synth/RFSoC_Main_test_blk_usp_rf_data_converter_0_0_overvol_irq.v" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_usp_rf_data_converter_0_0/synth/RFSoC_Main_test_blk_usp_rf_data_converter_0_0_powerup_state_irq.v" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_usp_rf_data_converter_0_0/synth/RFSoC_Main_test_blk_usp_rf_data_converter_0_0_rst_cnt.v" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_usp_rf_data_converter_0_0/synth/RFSoC_Main_test_blk_usp_rf_data_converter_0_0.v" \

vlog -work axi_vip_v1_1_8  -sv2k12 "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_8  -sv2k12 "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/da1e/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Main_test.gen/sources_1/bd/RFSoC_Main_test_blk/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/RFSoC_Main_test_blk/ip/RFSoC_Main_test_blk_zynq_ultra_ps_e_0_0/sim/RFSoC_Main_test_blk_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
"../../../bd/RFSoC_Main_test_blk/sim/RFSoC_Main_test_blk.v" \

vlog -work xil_defaultlib \
"glbl.v"

