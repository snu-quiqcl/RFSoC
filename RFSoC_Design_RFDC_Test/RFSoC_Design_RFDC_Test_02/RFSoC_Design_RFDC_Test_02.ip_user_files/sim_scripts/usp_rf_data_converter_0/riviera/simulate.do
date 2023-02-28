onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+usp_rf_data_converter_0 -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.usp_rf_data_converter_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {usp_rf_data_converter_0.udo}

run -all

endsim

quit -force
