vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -sv2k12 \
"E:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"E:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../RFDC_DDS_test.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_block.v" \

vlog -work xil_defaultlib  -sv2k12 \
"../../../../RFDC_DDS_test.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_por_fsm_top.sv" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../RFDC_DDS_test.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_bgt_fsm.v" \

vlog -work xil_defaultlib  -sv2k12 \
"../../../../RFDC_DDS_test.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_device_rom.sv" \
"../../../../RFDC_DDS_test.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_por_fsm.sv" \
"../../../../RFDC_DDS_test.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_por_fsm_disabled.sv" \
"../../../../RFDC_DDS_test.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_tile_config.sv" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../RFDC_DDS_test.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_drp_arbiter.v" \
"../../../../RFDC_DDS_test.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_register_decode.v" \
"../../../../RFDC_DDS_test.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_address_decoder.v" \
"../../../../RFDC_DDS_test.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_axi_lite_ipif.v" \
"../../../../RFDC_DDS_test.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_counter_f.v" \
"../../../../RFDC_DDS_test.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_pselect_f.v" \
"../../../../RFDC_DDS_test.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_slave_attachment.v" \
"../../../../RFDC_DDS_test.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_rf_wrapper.v" \
"../../../../RFDC_DDS_test.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_drp_control_top.v" \
"../../../../RFDC_DDS_test.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_drp_control.v" \
"../../../../RFDC_DDS_test.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_drp_access_ctrl.v" \
"../../../../RFDC_DDS_test.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_irq_req_ack.v" \
"../../../../RFDC_DDS_test.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_irq_sync.v" \
"../../../../RFDC_DDS_test.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0bufg_gt_ctrl.v" \
"../../../../RFDC_DDS_test.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_overvol_irq.v" \
"../../../../RFDC_DDS_test.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_powerup_state_irq.v" \
"../../../../RFDC_DDS_test.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_rst_cnt.v" \
"../../../../RFDC_DDS_test.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

