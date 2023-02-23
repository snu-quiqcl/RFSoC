onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L xilinx_vip -L xpm -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_8 -L zynq_ultra_ps_e_vip_v1_0_8 -L xil_defaultlib -L fifo_generator_v13_2_5 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.RFSoC_Simple_block_01 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {RFSoC_Simple_block_01.udo}

run -all

quit -force
