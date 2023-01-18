onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib rfdc_ex_opt

do {wave.do}

view wave
view structure
view signals

do {rfdc_ex.udo}

run -all

quit -force
