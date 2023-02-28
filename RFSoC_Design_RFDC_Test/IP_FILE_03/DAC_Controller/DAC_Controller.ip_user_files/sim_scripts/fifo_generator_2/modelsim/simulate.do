onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L xpm -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.fifo_generator_2 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {fifo_generator_2.udo}

run -all

quit -force
