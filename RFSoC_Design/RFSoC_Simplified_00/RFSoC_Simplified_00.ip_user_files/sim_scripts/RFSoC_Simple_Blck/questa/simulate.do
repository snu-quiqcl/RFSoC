onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib RFSoC_Simple_Blck_opt

do {wave.do}

view wave
view structure
view signals

do {RFSoC_Simple_Blck.udo}

run -all

quit -force
