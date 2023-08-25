onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib dds_compiler_3_opt

do {wave.do}

view wave
view structure
view signals

do {dds_compiler_3.udo}

run -all

quit -force
