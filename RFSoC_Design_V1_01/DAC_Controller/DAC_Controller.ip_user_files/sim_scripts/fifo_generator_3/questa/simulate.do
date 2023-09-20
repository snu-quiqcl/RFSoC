onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib fifo_generator_3_opt

do {wave.do}

view wave
view structure
view signals

do {fifo_generator_3.udo}

run -all

quit -force
