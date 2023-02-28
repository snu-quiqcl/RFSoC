onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+fifo_generator_3 -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.fifo_generator_3 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {fifo_generator_3.udo}

run -all

endsim

quit -force
