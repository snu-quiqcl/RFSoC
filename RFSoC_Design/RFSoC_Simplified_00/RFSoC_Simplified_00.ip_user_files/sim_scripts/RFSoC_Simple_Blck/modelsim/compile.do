vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_8
vlib modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_8
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/fifo_generator_v13_2_5
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_data_fifo_v2_1_21
vlib modelsim_lib/msim/axi_register_slice_v2_1_22
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_22
vlib modelsim_lib/msim/axi_clock_converter_v2_1_21
vlib modelsim_lib/msim/blk_mem_gen_v8_4_4
vlib modelsim_lib/msim/axi_dwidth_converter_v2_1_22

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_8 modelsim_lib/msim/axi_vip_v1_1_8
vmap zynq_ultra_ps_e_vip_v1_0_8 modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_8
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap fifo_generator_v13_2_5 modelsim_lib/msim/fifo_generator_v13_2_5
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_data_fifo_v2_1_21 modelsim_lib/msim/axi_data_fifo_v2_1_21
vmap axi_register_slice_v2_1_22 modelsim_lib/msim/axi_register_slice_v2_1_22
vmap axi_protocol_converter_v2_1_22 modelsim_lib/msim/axi_protocol_converter_v2_1_22
vmap axi_clock_converter_v2_1_21 modelsim_lib/msim/axi_clock_converter_v2_1_21
vmap blk_mem_gen_v8_4_4 modelsim_lib/msim/blk_mem_gen_v8_4_4
vmap axi_dwidth_converter_v2_1_22 modelsim_lib/msim/axi_dwidth_converter_v2_1_22

vlog -work xilinx_vip  -incr -sv -L axi_vip_v1_1_8 -L zynq_ultra_ps_e_vip_v1_0_8 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -sv -L axi_vip_v1_1_8 -L zynq_ultra_ps_e_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_8  -incr -sv -L axi_vip_v1_1_8 -L zynq_ultra_ps_e_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_8  -incr -sv -L axi_vip_v1_1_8 -L zynq_ultra_ps_e_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/da1e/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/RFSoC_Simple_Blck/ip/RFSoC_Simple_Blck_zynq_ultra_ps_e_0_0/sim/RFSoC_Simple_Blck_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vlog -work xil_defaultlib  -incr -sv -L axi_vip_v1_1_8 -L zynq_ultra_ps_e_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/RFSoC_Simple_Blck/ipshared/02b4/src/Distributor.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/RFSoC_Simple_Blck/ipshared/02b4/hdl/Distributor_v1_0.v" \
"../../../bd/RFSoC_Simple_Blck/ip/RFSoC_Simple_Blck_Distributor_0_0/sim/RFSoC_Simple_Blck_Distributor_0_0.v" \

vlog -work fifo_generator_v13_2_5  -incr "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ip/RFSoC_Simple_Blck_RTO_Core0_0_0/RFSoC_Simplified_00.srcs/sources_1/ip/fifo_generator_0/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5  -93 \
"../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ip/RFSoC_Simple_Blck_RTO_Core0_0_0/RFSoC_Simplified_00.srcs/sources_1/ip/fifo_generator_0/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -incr "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ip/RFSoC_Simple_Blck_RTO_Core0_0_0/RFSoC_Simplified_00.srcs/sources_1/ip/fifo_generator_0/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/RFSoC_Simple_Blck/ip/RFSoC_Simple_Blck_RTO_Core0_0_0/RFSoC_Simplified_00.srcs/sources_1/ip/fifo_generator_0/sim/fifo_generator_0.v" \

vlog -work xil_defaultlib  -incr -sv -L axi_vip_v1_1_8 -L zynq_ultra_ps_e_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/RFSoC_Simple_Blck/ipshared/a136/RFSoC_Simplified_00.srcs/sources_1/new/RTO_Core0.sv" \
"../../../bd/RFSoC_Simple_Blck/ip/RFSoC_Simple_Blck_RTO_Core0_0_0/sim/RFSoC_Simple_Blck_RTO_Core0_0_0.sv" \

vcom -work lib_cdc_v1_0_2  -93 \
"../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/RFSoC_Simple_Blck/ip/RFSoC_Simple_Blck_rst_ps8_0_99M_3/sim/RFSoC_Simple_Blck_rst_ps8_0_99M_3.vhd" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/RFSoC_Simple_Blck/sim/RFSoC_Simple_Blck.v" \

vlog -work generic_baseblocks_v2_1_0  -incr "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_21  -incr "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_22  -incr "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_22  -incr "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_21  -incr "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/1304/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_4  -incr "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_22  -incr "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/2394/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified_00.gen/sources_1/bd/RFSoC_Simple_Blck/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/RFSoC_Simple_Blck/ip/RFSoC_Simple_Blck_auto_ds_0/sim/RFSoC_Simple_Blck_auto_ds_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

