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

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_8 modelsim_lib/msim/axi_vip_v1_1_8
vmap zynq_ultra_ps_e_vip_v1_0_8 modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_8
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap fifo_generator_v13_2_5 modelsim_lib/msim/fifo_generator_v13_2_5
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13

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

vlog -work xpm  -incr -sv -L axi_vip_v1_1_8 -L zynq_ultra_ps_e_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/da1e/hdl" "+incdir+../../../bd/RFSoC_Simple_block_01/ipshared/f511/src" "+incdir+../../../bd/RFSoC_Simple_block_01/AXI2FIFO" "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/f511/src" "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/AXI2FIFO" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/da1e/hdl" "+incdir+../../../bd/RFSoC_Simple_block_01/ipshared/f511/src" "+incdir+../../../bd/RFSoC_Simple_block_01/AXI2FIFO" "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/f511/src" "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/AXI2FIFO" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_8  -incr -sv -L axi_vip_v1_1_8 -L zynq_ultra_ps_e_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/da1e/hdl" "+incdir+../../../bd/RFSoC_Simple_block_01/ipshared/f511/src" "+incdir+../../../bd/RFSoC_Simple_block_01/AXI2FIFO" "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/f511/src" "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/AXI2FIFO" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_8  -incr -sv -L axi_vip_v1_1_8 -L zynq_ultra_ps_e_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/da1e/hdl" "+incdir+../../../bd/RFSoC_Simple_block_01/ipshared/f511/src" "+incdir+../../../bd/RFSoC_Simple_block_01/AXI2FIFO" "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/f511/src" "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/AXI2FIFO" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/da1e/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/da1e/hdl" "+incdir+../../../bd/RFSoC_Simple_block_01/ipshared/f511/src" "+incdir+../../../bd/RFSoC_Simple_block_01/AXI2FIFO" "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/f511/src" "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/AXI2FIFO" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/RFSoC_Simple_block_01/ip/RFSoC_Simple_block_01_zynq_ultra_ps_e_0_0/sim/RFSoC_Simple_block_01_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vlog -work fifo_generator_v13_2_5  -incr "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/da1e/hdl" "+incdir+../../../bd/RFSoC_Simple_block_01/ipshared/f511/src" "+incdir+../../../bd/RFSoC_Simple_block_01/AXI2FIFO" "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/f511/src" "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/AXI2FIFO" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ip/RFSoC_Simple_block_01_RTO_Core0_0_0/src/fifo_generator_0/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5  -93 \
"../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ip/RFSoC_Simple_block_01_RTO_Core0_0_0/src/fifo_generator_0/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -incr "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/da1e/hdl" "+incdir+../../../bd/RFSoC_Simple_block_01/ipshared/f511/src" "+incdir+../../../bd/RFSoC_Simple_block_01/AXI2FIFO" "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/f511/src" "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/AXI2FIFO" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ip/RFSoC_Simple_block_01_RTO_Core0_0_0/src/fifo_generator_0/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/da1e/hdl" "+incdir+../../../bd/RFSoC_Simple_block_01/ipshared/f511/src" "+incdir+../../../bd/RFSoC_Simple_block_01/AXI2FIFO" "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/f511/src" "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/AXI2FIFO" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/RFSoC_Simple_block_01/ip/RFSoC_Simple_block_01_RTO_Core0_0_0/src/fifo_generator_0/sim/fifo_generator_0.v" \

vlog -work xil_defaultlib  -incr -sv -L axi_vip_v1_1_8 -L zynq_ultra_ps_e_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/da1e/hdl" "+incdir+../../../bd/RFSoC_Simple_block_01/ipshared/f511/src" "+incdir+../../../bd/RFSoC_Simple_block_01/AXI2FIFO" "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/f511/src" "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/AXI2FIFO" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/RFSoC_Simple_block_01/ipshared/308c/src/RTO_Core0.sv" \
"../../../bd/RFSoC_Simple_block_01/ip/RFSoC_Simple_block_01_RTO_Core0_0_0/sim/RFSoC_Simple_block_01_RTO_Core0_0_0.sv" \

vcom -work lib_cdc_v1_0_2  -93 \
"../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/RFSoC_Simple_block_01/ip/RFSoC_Simple_block_01_proc_sys_reset_0_0/sim/RFSoC_Simple_block_01_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib  -incr -sv -L axi_vip_v1_1_8 -L zynq_ultra_ps_e_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/da1e/hdl" "+incdir+../../../bd/RFSoC_Simple_block_01/ipshared/f511/src" "+incdir+../../../bd/RFSoC_Simple_block_01/AXI2FIFO" "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/f511/src" "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/AXI2FIFO" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/RFSoC_Simple_block_01/ip/RFSoC_Simple_block_01_AXI2FIFO_0_0/sim/RFSoC_Simple_block_01_AXI2FIFO_0_0.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/da1e/hdl" "+incdir+../../../bd/RFSoC_Simple_block_01/ipshared/f511/src" "+incdir+../../../bd/RFSoC_Simple_block_01/AXI2FIFO" "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/ipshared/f511/src" "+incdir+../../../../RFSoC_Simplified01.gen/sources_1/bd/RFSoC_Simple_block_01/AXI2FIFO" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/RFSoC_Simple_block_01/sim/RFSoC_Simple_block_01.v" \

vlog -work xil_defaultlib \
"glbl.v"

