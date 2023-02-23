vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_8
vlib activehdl/zynq_ultra_ps_e_vip_v1_0_8
vlib activehdl/xil_defaultlib
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/fifo_generator_v13_2_5

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_8 activehdl/axi_vip_v1_1_8
vmap zynq_ultra_ps_e_vip_v1_0_8 activehdl/zynq_ultra_ps_e_vip_v1_0_8
vmap xil_defaultlib activehdl/xil_defaultlib
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap fifo_generator_v13_2_5 activehdl/fifo_generator_v13_2_5

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

vlog -work xpm  -sv2k12 "+incdir+../../../../RFSoC_Simplified_04.gen/sources_1/bd/RFSoC_Simplified_block_04/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified_04.gen/sources_1/bd/RFSoC_Simplified_block_04/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../RFSoC_Simplified_04.gen/sources_1/bd/RFSoC_Simplified_block_04/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified_04.gen/sources_1/bd/RFSoC_Simplified_block_04/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../RFSoC_Simplified_04.gen/sources_1/bd/RFSoC_Simplified_block_04/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_8  -sv2k12 "+incdir+../../../../RFSoC_Simplified_04.gen/sources_1/bd/RFSoC_Simplified_block_04/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified_04.gen/sources_1/bd/RFSoC_Simplified_block_04/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../RFSoC_Simplified_04.gen/sources_1/bd/RFSoC_Simplified_block_04/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_8  -sv2k12 "+incdir+../../../../RFSoC_Simplified_04.gen/sources_1/bd/RFSoC_Simplified_block_04/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified_04.gen/sources_1/bd/RFSoC_Simplified_block_04/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../RFSoC_Simplified_04.gen/sources_1/bd/RFSoC_Simplified_block_04/ipshared/da1e/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../RFSoC_Simplified_04.gen/sources_1/bd/RFSoC_Simplified_block_04/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified_04.gen/sources_1/bd/RFSoC_Simplified_block_04/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/RFSoC_Simplified_block_04/ip/RFSoC_Simplified_block_04_zynq_ultra_ps_e_0_0/sim/RFSoC_Simplified_block_04_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../RFSoC_Simplified_04.gen/sources_1/bd/RFSoC_Simplified_block_04/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../RFSoC_Simplified_04.gen/sources_1/bd/RFSoC_Simplified_block_04/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/RFSoC_Simplified_block_04/ip/RFSoC_Simplified_block_04_proc_sys_reset_0_0/sim/RFSoC_Simplified_block_04_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../RFSoC_Simplified_04.gen/sources_1/bd/RFSoC_Simplified_block_04/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified_04.gen/sources_1/bd/RFSoC_Simplified_block_04/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/RFSoC_Simplified_block_04/ipshared/72fb/src/AXI2FIFO.sv" \
"../../../bd/RFSoC_Simplified_block_04/ip/RFSoC_Simplified_block_04_AXI2FIFO_0_0/sim/RFSoC_Simplified_block_04_AXI2FIFO_0_0.sv" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../RFSoC_Simplified_04.gen/sources_1/bd/RFSoC_Simplified_block_04/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified_04.gen/sources_1/bd/RFSoC_Simplified_block_04/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../RFSoC_Simplified_04.gen/sources_1/bd/RFSoC_Simplified_block_04/ip/RFSoC_Simplified_block_04_RTO_Core0_0_0/src/fifo_generator_0/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../RFSoC_Simplified_04.gen/sources_1/bd/RFSoC_Simplified_block_04/ip/RFSoC_Simplified_block_04_RTO_Core0_0_0/src/fifo_generator_0/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../RFSoC_Simplified_04.gen/sources_1/bd/RFSoC_Simplified_block_04/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified_04.gen/sources_1/bd/RFSoC_Simplified_block_04/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../RFSoC_Simplified_04.gen/sources_1/bd/RFSoC_Simplified_block_04/ip/RFSoC_Simplified_block_04_RTO_Core0_0_0/src/fifo_generator_0/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../RFSoC_Simplified_04.gen/sources_1/bd/RFSoC_Simplified_block_04/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified_04.gen/sources_1/bd/RFSoC_Simplified_block_04/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/RFSoC_Simplified_block_04/ip/RFSoC_Simplified_block_04_RTO_Core0_0_0/src/fifo_generator_0/sim/fifo_generator_0.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../RFSoC_Simplified_04.gen/sources_1/bd/RFSoC_Simplified_block_04/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified_04.gen/sources_1/bd/RFSoC_Simplified_block_04/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/RFSoC_Simplified_block_04/ipshared/bb14/src/RTO_Core0.sv" \
"../../../bd/RFSoC_Simplified_block_04/ip/RFSoC_Simplified_block_04_RTO_Core0_0_0/sim/RFSoC_Simplified_block_04_RTO_Core0_0_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../RFSoC_Simplified_04.gen/sources_1/bd/RFSoC_Simplified_block_04/ipshared/ec67/hdl" "+incdir+../../../../RFSoC_Simplified_04.gen/sources_1/bd/RFSoC_Simplified_block_04/ipshared/da1e/hdl" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/RFSoC_Simplified_block_04/sim/RFSoC_Simplified_block_04.v" \

vlog -work xil_defaultlib \
"glbl.v"

