-makelib xcelium_lib/xpm -sv \
  "E:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "E:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../RFDC_DDS_test.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_block.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../../RFDC_DDS_test.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_por_fsm_top.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../RFDC_DDS_test.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_bgt_fsm.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../../RFDC_DDS_test.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_device_rom.sv" \
  "../../../../RFDC_DDS_test.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_por_fsm.sv" \
  "../../../../RFDC_DDS_test.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_por_fsm_disabled.sv" \
  "../../../../RFDC_DDS_test.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_tile_config.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
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
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

