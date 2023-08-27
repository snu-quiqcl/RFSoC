onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib dds_compiler_11_opt

do {wave.do}

view wave
view structure
view signals

do {dds_compiler_11.udo}

run -all

quit -force
