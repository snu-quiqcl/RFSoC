# QuIQCL RFSoC
## Hardware Project
### V1_0
Vivado : .\RFSoC_Design_V1_0\n
Vitis : .\Vitis\VITIS_WORKSAPCE
RFDC Control through binary file(ELF) execution
## Software Project
### Python to C Code Interpreter
Python Code : .\Compiler\PythonCode\python2C.py
Simple function, python class to C++ class and function coversion done
### Compiler
Python Code : .\Compiler\PythonCode\C_compiler.py
Using 'aarch64-none-elf-gcc' GNU compiler and including libraries made by Xilinx, make ELF file which will run on RFSoC. 
Data is send via TCP.

## TODO
### PCB
Should be made with D2S IC chip.
800MHz version(with TI chip) and higher version(with 3 high frequency OPAMP manually) should be made separately
### 8 DAC output
Clock Buffer should be added.
### ADC input
Input interval setting command should be added
### Branch Controller
Single cycle CPU concept is made to implement fast branch.
### RTIO CMD revision
Data len should be changed from 32 bit to 64 bit. And other CMD option should be assigned to AXI address
### RTIO instruction send method
According to QSCOUT paper, GPIO(~100ns ) is faster than AXI interface. In addition QSCOUT uses DMA(~1us) for data send. We can make big advance using this characteristic.
### Paper reading
QICK Paper reading -> Need Recall
Artiq -> Seems to be nothing new in Verilog code.(Only PCB job is open source)
Octet(QSCOUT) -> Should be studied more deeply
Other Devices -> Should be read
