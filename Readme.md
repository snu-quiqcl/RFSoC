# QuIQCL RFSoC
<center><img width="80%" src=https://github.com/snu-quiqcl/RFSoC/assets/49219392/304ff119-cee9-46a9-b3de-0a288b984e47></center>

This is LowLatENCy QuIQCL RFSoC project. It encompasses a Verilog file, a firmware file, and a driver file.

## Hardware
<center><img width="80%" alt="image" src="https://github.com/snu-quiqcl/RFSoC/assets/49219392/baf8e260-2888-4629-863c-27ccc4b6ce85"></center>

 ### PS-PL Interface
  The system operates with a dual-core CPU setup. The first core functions as a TCP server utilizing lwip, while the second core is dedicated to real-time instruction fetching. The first core is responsible for receiving the C++ ELF file from the host PC and loading it onto DRAM. Upon completion, it signals the second core via an interrupt to commence execution. Real-time instructions comprise a 64-bit timestamp paired with 64-bit data. These instructions are conveyed from the Processing System (PS) to the Programmable Logic (PL) side via the AXI bus.

Typically, aside from the TimeController module, which incorporates a 64-bit counter for timestamp generation, modules such as ```AXI2FIFO```, ```RTO_Core```, and ```GPO_Core``` are situated proximate to the AXI bus interface for efficiency. The ```AXI2FIFO``` module takes in the 128-bit instructions and queues them into the ```RTO_Core``` FIFO. Subsequently, the ```RTO_Core``` module releases instructions to the ```GPO_Core``` module when the timestamp aligns. The ```GPO_Core``` module assesses the instructions for errors, such as timestamp discrepancies, and validates the data. Following validation, the instructions are dispatched to the actual physical IP modules. It is important to note the presence of a dual independent clock FIFO between the ```AXI2FIFO``` and ```RTO_Core``` to mitigate issues arising from clock domain crossings.

 ### DAC Controller
  This system generates a 256-bit chunk of data, comprising 16 consecutive digital sine wave outputs from sine Look-Up Tables (LUTs). The phase of these outputs can either be relatively reset to the initial time or allowed to run continuously. It features a 48-bit frequency, a 48-bit amplitude, and a 48-bit phase.
 ### TTL Out
  This system produces an 8-bit realtime TTL output with a time resolution of 8 nanoseconds. It is equipped with a special FIFO, an adjustable FIFO, where the top instruction can be overridden by another instruction with the same timestamp.

 ### TTLx8_Out
  This makes 8 bit reamtime TTL output with time resolution of 1ns. It also utilize adjustable fifo.

 ### EdgeCounter
  This receives 1 bit TTL signal and count its positive edge signal.

 ### TimeController
  This creates a 64-bit timestamp counter output that is synchronized across all RTIO (Real-Time Input/Output) modules.

