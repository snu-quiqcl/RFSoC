Current File directory
*Hardware Project
1) 1DAC Controller
Vivado : RFSoC\RFSoC_Design_RFDC_Test\IP_FILE_06\TEST_07
Vitis : E:\RFSoC\GIT\RFSoC\VITIS_TEST\VITIS_WORKSPACE6
->Binary file execution, simple lexer implemented (clock configuration from example code in drive library)

2) 1DAC and digital signal output
Vivado : RFSoC\RFSoC_Design_RFDC_Test\IP_FILE_06\TEST_10
Vitis : E:\RFSoC\GIT\RFSoC\VITIS_TEST\VITIS_WORKSPACE7
-> SD Card Booting Done, Delay Check Done

3) RFDC Cotroller (V1_1)
Vivado : RFSoC\RFSoC_Design_RFDC_V1_1\IP_FILE_00

*Software Project
Python to C Code Interpreter made using AST library
Python code : E:\RFSoC\GIT\RFSoC\Compiler\PythonCode\python2C.py
-> Simple function, python class to struct and function coversion done
class method call should be made
e.g. dds0.out(30) => dds_out(&dds0,30);
Compiler : using 'aarch64-none-elf-gcc' which xilinx uses to compile C file to ELF file format. TCP packet data can be made without ELF header which has 64kB.

TODO:
SD Card Boot -> Done
SD Card Read & Write -> Not yet
Binary File receive and write -> Not yet
Delay Check -> Checked(~300ns) and Fixed Delay should be implemented
PCB -> Should be made with D2S IC chip.
800MHz version(with TI chip) and higher version(with 3 high frequency OPAMP manually) should be made separately
Simple Standalone -> Done with simple lexer(Oscilloscope communication style)
8 DAC output -> Not yet. Clock Buffer should be added.
ADC input -> Not yet. Input interval setting command should be added
Branch Controller -> Only Concept is Made
photon and edge counter -> Only Concept is Made. Book should be read
RTIO CMD revision -> data len should be changed from 32 bit to 64 bit. And other CMD option should be assigned to AXI address
RTIO instruction send method -> According to QSCOUT paper, GPIO(~100ns ) is faster than AXI interface. In addition QSCOUT uses DMA(~1us) for data send. We can make big advance using this characteristic.
Compile C Code using ARM GNU Compile chain and send it to FPGA

QICK Paper reading -> Need Recall
Artiq -> Seems to be nothing new in Verilog code.(Only PCB job is open source)
Octet(QSCOUT) -> Should be studied more deeply
Other Devices -> Should be read