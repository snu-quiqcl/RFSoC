# QuIQCL RFSoC
<img width="80%" src=https://github.com/snu-quiqcl/RFSoC/assets/49219392/304ff119-cee9-46a9-b3de-0a288b984e47>


## Hardware Project
### V1_0
Vivado : .\RFSoC_Design_V1_0

Vitis : .\Vitis\VITIS_WORKSAPCE

RFDC Control through binary file(ELF) execution

###DDS
Using full hardware function(e.g. NCO, x8 interpolation) in 100MHz makes 300ns latency. However 100MHz without additional function has 100ns latency and 200MHz has a 80~90ns latency. So DDS has to be implemented in Verilog code. In addition AD9910 latency which is located in data sheet should be compared.

### V1_1
Vivado : .\RFSoC_Design_V1_1\IP_FILES00

Verilog code is created through automatic indexing using pyrhon code. In addition TCL code for each verilog code is created respectively. DAC Clock for each tile should be  connected separately. See "VivadoPrjManager" to make TCL code and make verilog code.

250MHz version is updated. To resolve timing problem,

1) pipelined multipication in DDS

2) AXI, RTO Core buffer 

is added to V1_0 code. PL side works in 250MHz, and RF DAC works in 4GHz. We changed PL frequency to make TTL module through OSERDES IP(1ns scale).

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
