# QuIQCL RFSoC
## Hardware Project
### V1_0
Vivado : .\RFSoC_Design_V1_0

Vitis : .\Vitis\VITIS_WORKSAPCE

RFDC Control through binary file(ELF) execution

###DDS
Using full hardware function(e.g. NCO, x8 interpolation) in 100MHz makes 300ns latency. However 100MHz without additional function has 100ns latency and 200MHz has a 80~90ns latency. So DDS has to be implemented in Verilog code. In addition AD9910 latency which is located in data sheet should be compared.
## Software Project
### Python to C Code Interpreter
Python Code : .\Compiler\PythonCode\python2C.py

Simple function, python class to C++ class and function coversion done
### Compiler
Python Code : .\Compiler\PythonCode\C_compiler.py

Using 'aarch64-none-elf-gcc' GNU compiler and including libraries made by Xilinx, make ELF file which will run on RFSoC. 
Data is send via TCP. 
BSS section initialization works through ./Compiler/C_Code/init/startup.S code.
Without BSS initialization, static variables without initialization have a garbage value, and this makes machine malfunction(e.g. malloc).
Linker file makes sections of code and set origin of code(Note that if you set wrong origin, code will not work!!)
Initial malloc requires very big memory size, so you have to big enough heap size to prevent from halt of machine(This is very important!).

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
