vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm  -incr -sv \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr \
"../../../../RFSoC_Design_RFDC_Test_00.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_block.v" \

vlog -work xil_defaultlib  -incr -sv \
"../../../../RFSoC_Design_RFDC_Test_00.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_por_fsm_top.sv" \

vlog -work xil_defaultlib  -incr \
"../../../../RFSoC_Design_RFDC_Test_00.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_bgt_fsm.v" \

vlog -work xil_defaultlib  -incr -sv \
"../../../../RFSoC_Design_RFDC_Test_00.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_device_rom.sv" \
"../../../../RFSoC_Design_RFDC_Test_00.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_por_fsm.sv" \
"../../../../RFSoC_Design_RFDC_Test_00.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_por_fsm_disabled.sv" \
"../../../../RFSoC_Design_RFDC_Test_00.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_tile_config.sv" \

vlog -work xil_defaultlib  -incr \
"../../../../RFSoC_Design_RFDC_Test_00.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_drp_arbiter.v" \
"../../../../RFSoC_Design_RFDC_Test_00.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_register_decode.v" \
"../../../../RFSoC_Design_RFDC_Test_00.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_address_decoder.v" \
"../../../../RFSoC_Design_RFDC_Test_00.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_axi_lite_ipif.v" \
"../../../../RFSoC_Design_RFDC_Test_00.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_counter_f.v" \
"../../../../RFSoC_Design_RFDC_Test_00.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_pselect_f.v" \
"../../../../RFSoC_Design_RFDC_Test_00.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_slave_attachment.v" \
"../../../../RFSoC_Design_RFDC_Test_00.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_rf_wrapper.v" \
"../../../../RFSoC_Design_RFDC_Test_00.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_drp_control_top.v" \
"../../../../RFSoC_Design_RFDC_Test_00.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_drp_control.v" \
"../../../../RFSoC_Design_RFDC_Test_00.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_drp_access_ctrl.v" \
"../../../../RFSoC_Design_RFDC_Test_00.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_irq_req_ack.v" \
"../../../../RFSoC_Design_RFDC_Test_00.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_irq_sync.v" \
"../../../../RFSoC_Design_RFDC_Test_00.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0bufg_gt_ctrl.v" \
"../../../../RFSoC_Design_RFDC_Test_00.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_overvol_irq.v" \
"../../../../RFSoC_Design_RFDC_Test_00.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_powerup_state_irq.v" \
"../../../../RFSoC_Design_RFDC_Test_00.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_nco_fsm_t0.v" \
"../../../../RFSoC_Design_RFDC_Test_00.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_usr_drp_mgmt.v" \
"../../../../RFSoC_Design_RFDC_Test_00.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_rst_cnt.v" \
"../../../../RFSoC_Design_RFDC_Test_00.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

