onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib usp_rf_data_converter_0_opt

do {wave.do}

view wave
view structure
view signals

do {usp_rf_data_converter_0.udo}

run -all

quit -force
