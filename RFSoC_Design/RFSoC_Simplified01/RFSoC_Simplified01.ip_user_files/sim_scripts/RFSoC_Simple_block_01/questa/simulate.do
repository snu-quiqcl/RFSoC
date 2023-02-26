onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib RFSoC_Simple_block_01_opt

do {wave.do}

view wave
view structure
view signals

do {RFSoC_Simple_block_01.udo}

run -all

quit -force
