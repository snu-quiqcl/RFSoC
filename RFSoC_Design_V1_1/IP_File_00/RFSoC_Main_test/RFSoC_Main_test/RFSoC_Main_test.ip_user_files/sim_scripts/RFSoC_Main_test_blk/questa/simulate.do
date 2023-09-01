onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib RFSoC_Main_test_blk_opt

do {wave.do}

view wave
view structure
view signals

do {RFSoC_Main_test_blk.udo}

run -all

quit -force
