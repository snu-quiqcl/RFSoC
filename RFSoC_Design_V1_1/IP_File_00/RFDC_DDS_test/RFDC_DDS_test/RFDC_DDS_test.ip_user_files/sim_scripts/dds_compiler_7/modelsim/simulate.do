onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L xbip_utils_v3_0_10 -L axi_utils_v2_0_6 -L xbip_pipe_v3_0_6 -L xbip_bram18k_v3_0_6 -L mult_gen_v12_0_16 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_dsp48_addsub_v3_0_6 -L xbip_dsp48_multadd_v3_0_6 -L dds_compiler_v6_0_20 -L xil_defaultlib -L secureip -lib xil_defaultlib xil_defaultlib.dds_compiler_7

do {wave.do}

view wave
view structure
view signals

do {dds_compiler_7.udo}

run -all

quit -force
