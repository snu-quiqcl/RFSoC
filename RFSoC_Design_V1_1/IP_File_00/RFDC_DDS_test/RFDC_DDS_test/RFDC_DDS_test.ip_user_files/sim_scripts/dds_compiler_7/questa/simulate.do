onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib dds_compiler_7_opt

do {wave.do}

view wave
view structure
view signals

do {dds_compiler_7.udo}

run -all

quit -force
