-makelib ies_lib/xil_defaultlib \
  "../../../../TEST_RFSoC_1.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_block.v" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../../TEST_RFSoC_1.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_por_fsm_top.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../TEST_RFSoC_1.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_bgt_fsm.v" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../../TEST_RFSoC_1.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_device_rom.sv" \
  "../../../../TEST_RFSoC_1.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_por_fsm.sv" \
  "../../../../TEST_RFSoC_1.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_por_fsm_disabled.sv" \
  "../../../../TEST_RFSoC_1.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_tile_config.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../TEST_RFSoC_1.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_drp_arbiter.v" \
  "../../../../TEST_RFSoC_1.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_register_decode.v" \
  "../../../../TEST_RFSoC_1.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_address_decoder.v" \
  "../../../../TEST_RFSoC_1.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_axi_lite_ipif.v" \
  "../../../../TEST_RFSoC_1.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_counter_f.v" \
  "../../../../TEST_RFSoC_1.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_pselect_f.v" \
  "../../../../TEST_RFSoC_1.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_slave_attachment.v" \
  "../../../../TEST_RFSoC_1.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_rf_wrapper.v" \
  "../../../../TEST_RFSoC_1.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_drp_control_top.v" \
  "../../../../TEST_RFSoC_1.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_drp_control.v" \
  "../../../../TEST_RFSoC_1.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_drp_access_ctrl.v" \
  "../../../../TEST_RFSoC_1.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_irq_req_ack.v" \
  "../../../../TEST_RFSoC_1.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_irq_sync.v" \
  "../../../../TEST_RFSoC_1.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0bufg_gt_ctrl.v" \
  "../../../../TEST_RFSoC_1.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_overvol_irq.v" \
  "../../../../TEST_RFSoC_1.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_powerup_state_irq.v" \
  "../../../../TEST_RFSoC_1.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_nco_fsm_t0.v" \
  "../../../../TEST_RFSoC_1.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_usr_drp_mgmt.v" \
  "../../../../TEST_RFSoC_1.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0_rst_cnt.v" \
  "../../../../TEST_RFSoC_1.gen/sources_1/ip/usp_rf_data_converter_0/synth/usp_rf_data_converter_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

