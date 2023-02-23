onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib RFSoC_Simplified_block_04_opt

do {wave.do}

view wave
view structure
view signals

do {RFSoC_Simplified_block_04.udo}

run -all

quit -force
