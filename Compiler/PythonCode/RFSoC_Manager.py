# -*- coding: utf-8 -*-
"""
Created on Wed Aug  2 18:01:13 2023

@author: QC109_4
"""
import TCPClient_v1_00 as TCP
import C_compiler as elf_maker
import python2C as interpreter

class RFSoC_Mgr:
    def __init__(self):
        self.interpreter = interpreter.interpreter()
        self.comp = elf_maker.Compiler()
        self.RFSoC = TCP.RFSoC()
        self.file_name = 'RFSoC_Driver3'
        self.do_compile = True
        self.comp.do_compile = self.do_compile
        
    def run_RFSoC(self):
        self.comp.compile_code(self.file_name)
        
        # Read the ELF file
        elf_data = self.comp.read_elf_file(self.file_name)

        # Convert to C code array representation
        c_code = self.comp.create_c_code_array(elf_data)

        # Save the C code to a file
        self.comp.save_c_code_to_file(c_code, self.file_name)
        
        # self.RFSoC.tcp.write(self.comp.create_TCP_packet()[0])
        # a = self.RFSoC.tcp.read()
        # print(a)
        self.RFSoC.send_bin(self.comp.create_TCP_packet())
        self.RFSoC.tcp.write("#BIN#run_binary#!EOL#");
        
    def connect(self):
        self.RFSoC.connect()
        
if __name__ == "__main__":
    RFSoC_Mgr = RFSoC_Mgr()
    RFSoC_Mgr.connect()
    RFSoC_Mgr.run_RFSoC()