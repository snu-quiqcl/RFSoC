onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+RFSoC_Main_test_blk -L xilinx_vip -L xpm -L xbip_utils_v3_0_10 -L axi_utils_v2_0_6 -L xbip_pipe_v3_0_6 -L xbip_bram18k_v3_0_6 -L mult_gen_v12_0_16 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_dsp48_addsub_v3_0_6 -L xbip_dsp48_multadd_v3_0_6 -L dds_compiler_v6_0_20 -L xil_defaultlib -L fifo_generator_v13_2_5 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_22 -L axi_data_fifo_v2_1_21 -L axi_crossbar_v2_1_23 -L axi_vip_v1_1_8 -L zynq_ultra_ps_e_vip_v1_0_8 -L axi_protocol_converter_v2_1_22 -L axi_clock_converter_v2_1_21 -L blk_mem_gen_v8_4_4 -L axi_dwidth_converter_v2_1_22 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.RFSoC_Main_test_blk xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {RFSoC_Main_test_blk.udo}

run -all

endsim

quit -force
