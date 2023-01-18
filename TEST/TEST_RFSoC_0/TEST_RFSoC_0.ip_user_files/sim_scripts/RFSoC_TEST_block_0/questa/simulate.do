onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib RFSoC_TEST_block_0_opt

do {wave.do}

view wave
view structure
view signals

do {RFSoC_TEST_block_0.udo}

run -all

quit -force
