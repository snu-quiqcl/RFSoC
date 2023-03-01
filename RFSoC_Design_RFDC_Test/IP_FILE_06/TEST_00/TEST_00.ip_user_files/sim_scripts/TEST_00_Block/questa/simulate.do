onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib TEST_00_Block_opt

do {wave.do}

view wave
view structure
view signals

do {TEST_00_Block.udo}

run -all

quit -force
