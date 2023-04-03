vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_8
vlib riviera/zynq_ultra_ps_e_vip_v1_0_8
vlib riviera/xil_defaultlib
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_22
vlib riviera/fifo_generator_v13_2_5
vlib riviera/axi_data_fifo_v2_1_21
vlib riviera/axi_crossbar_v2_1_23
vlib riviera/axi_protocol_converter_v2_1_22
vlib riviera/axi_clock_converter_v2_1_21
vlib riviera/blk_mem_gen_v8_4_4
vlib riviera/axi_dwidth_converter_v2_1_22
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_8 riviera/axi_vip_v1_1_8
vmap zynq_ultra_ps_e_vip_v1_0_8 riviera/zynq_ultra_ps_e_vip_v1_0_8
vmap xil_defaultlib riviera/xil_defaultlib
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_22 riviera/axi_register_slice_v2_1_22
vmap fifo_generator_v13_2_5 riviera/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_21 riviera/axi_data_fifo_v2_1_21
vmap axi_crossbar_v2_1_23 riviera/axi_crossbar_v2_1_23
vmap axi_protocol_converter_v2_1_22 riviera/axi_protocol_converter_v2_1_22
vmap axi_clock_converter_v2_1_21 riviera/axi_clock_converter_v2_1_21
vmap blk_mem_gen_v8_4_4 riviera/blk_mem_gen_v8_4_4
vmap axi_dwidth_converter_v2_1_22 riviera/axi_dwidth_converter_v2_1_22
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13

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

vlog -work xpm  -sv2k12 "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/da1e/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/da1e/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_8  -sv2k12 "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/da1e/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_8  -sv2k12 "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/da1e/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/da1e/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/da1e/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_zynq_ultra_ps_e_0_0/sim/TEST_02_Block_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/da1e/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_22  -v2k5 "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/da1e/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/da1e/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/da1e/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_21  -v2k5 "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/da1e/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_23  -v2k5 "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/da1e/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/da1e/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_xbar_0/sim/TEST_02_Block_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_22  -v2k5 "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/da1e/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_21  -v2k5 "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/da1e/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/1304/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/da1e/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_22  -v2k5 "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/da1e/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/2394/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/da1e/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_auto_ds_0/sim/TEST_02_Block_auto_ds_0.v" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_auto_pc_0/sim/TEST_02_Block_auto_pc_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_proc_sys_reset_0_0/sim/TEST_02_Block_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/da1e/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_DAC_Controller_0_0/ip/fifo_generator_3/sim/fifo_generator_3.v" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_DAC_Controller_0_0/ip/fifo_generator_2/sim/fifo_generator_2.v" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_DAC_Controller_0_0/ip/fifo_generator_1/sim/fifo_generator_1.v" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_DAC_Controller_0_0/ip/fifo_generator_0/sim/fifo_generator_0.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/da1e/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/TEST_02_Block/ipshared/6f90/new/AXI2FIFO.sv" \
"../../../bd/TEST_02_Block/ipshared/6f90/new/GPO_Core.sv" \
"../../../bd/TEST_02_Block/ipshared/6f90/new/RFDC_Controller.sv" \
"../../../bd/TEST_02_Block/ipshared/6f90/new/RTO_Core.sv" \
"../../../bd/TEST_02_Block/ipshared/6f90/new/DAC_Controller.sv" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_DAC_Controller_0_0/sim/TEST_02_Block_DAC_Controller_0_0.sv" \
"../../../bd/TEST_02_Block/ipshared/39db/AXI2COM.sv" \
"../../../bd/TEST_02_Block/ipshared/39db/Timestamp_Counter.sv" \
"../../../bd/TEST_02_Block/ipshared/39db/TimeController.sv" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_TimeController_0_0/sim/TEST_02_Block_TimeController_0_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/da1e/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_usp_rf_data_converter_0_0/synth/TEST_02_Block_usp_rf_data_converter_0_0_block.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/da1e/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_usp_rf_data_converter_0_0/synth/TEST_02_Block_usp_rf_data_converter_0_0_por_fsm_top.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/da1e/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_usp_rf_data_converter_0_0/synth/TEST_02_Block_usp_rf_data_converter_0_0_bgt_fsm.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/da1e/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_usp_rf_data_converter_0_0/synth/TEST_02_Block_usp_rf_data_converter_0_0_device_rom.sv" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_usp_rf_data_converter_0_0/synth/TEST_02_Block_usp_rf_data_converter_0_0_por_fsm.sv" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_usp_rf_data_converter_0_0/synth/TEST_02_Block_usp_rf_data_converter_0_0_por_fsm_disabled.sv" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_usp_rf_data_converter_0_0/synth/TEST_02_Block_usp_rf_data_converter_0_0_tile_config.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/ec67/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/da1e/hdl" "+incdir+../../../../TEST_02.gen/sources_1/bd/TEST_02_Block/ipshared/d0f7" "+incdir+C:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_usp_rf_data_converter_0_0/synth/TEST_02_Block_usp_rf_data_converter_0_0_drp_arbiter.v" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_usp_rf_data_converter_0_0/synth/TEST_02_Block_usp_rf_data_converter_0_0_register_decode.v" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_usp_rf_data_converter_0_0/synth/TEST_02_Block_usp_rf_data_converter_0_0_address_decoder.v" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_usp_rf_data_converter_0_0/synth/TEST_02_Block_usp_rf_data_converter_0_0_axi_lite_ipif.v" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_usp_rf_data_converter_0_0/synth/TEST_02_Block_usp_rf_data_converter_0_0_counter_f.v" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_usp_rf_data_converter_0_0/synth/TEST_02_Block_usp_rf_data_converter_0_0_pselect_f.v" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_usp_rf_data_converter_0_0/synth/TEST_02_Block_usp_rf_data_converter_0_0_slave_attachment.v" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_usp_rf_data_converter_0_0/synth/TEST_02_Block_usp_rf_data_converter_0_0_rf_wrapper.v" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_usp_rf_data_converter_0_0/synth/TEST_02_Block_usp_rf_data_converter_0_0_drp_control_top.v" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_usp_rf_data_converter_0_0/synth/TEST_02_Block_usp_rf_data_converter_0_0_drp_control.v" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_usp_rf_data_converter_0_0/synth/TEST_02_Block_usp_rf_data_converter_0_0_drp_access_ctrl.v" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_usp_rf_data_converter_0_0/synth/TEST_02_Block_usp_rf_data_converter_0_0_irq_req_ack.v" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_usp_rf_data_converter_0_0/synth/TEST_02_Block_usp_rf_data_converter_0_0_irq_sync.v" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_usp_rf_data_converter_0_0/synth/TEST_02_Block_usp_rf_data_converter_0_0bufg_gt_ctrl.v" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_usp_rf_data_converter_0_0/synth/TEST_02_Block_usp_rf_data_converter_0_0_overvol_irq.v" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_usp_rf_data_converter_0_0/synth/TEST_02_Block_usp_rf_data_converter_0_0_powerup_state_irq.v" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_usp_rf_data_converter_0_0/synth/TEST_02_Block_usp_rf_data_converter_0_0_nco_fsm_t0.v" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_usp_rf_data_converter_0_0/synth/TEST_02_Block_usp_rf_data_converter_0_0_usr_drp_mgmt.v" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_usp_rf_data_converter_0_0/synth/TEST_02_Block_usp_rf_data_converter_0_0_rst_cnt.v" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_usp_rf_data_converter_0_0/synth/TEST_02_Block_usp_rf_data_converter_0_0.v" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_clk_wiz_0_1/TEST_02_Block_clk_wiz_0_1_clk_wiz.v" \
"../../../bd/TEST_02_Block/ip/TEST_02_Block_clk_wiz_0_1/TEST_02_Block_clk_wiz_0_1.v" \
"../../../bd/TEST_02_Block/sim/TEST_02_Block.v" \

vlog -work xil_defaultlib \
"glbl.v"

