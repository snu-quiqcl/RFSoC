# -*- coding: utf-8 -*-
"""
Created on Tue Aug  1 23:27:53 2023

@author: QC109_4
"""
import subprocess
from elftools.elf.elffile import ELFFile
from capstone import *

class Compiler:
    def __init__(self):
        print('compiler')
        self.elf_data = None
        self.do_compile = False
        self.entry_point = 0x00
        self.stack_start = 0x00
        self.stack_end = 0x00
        self.heap_start = 0x00
        self.heap_end = 0x00
        self.elf_data = None
        
    def read_elf_file(self, file_name):
        elf_file_name = file_name + '.elf'
        with open(elf_file_name, 'rb') as f:
            self.elf_data = f.read()
            elf_file = ELFFile(f)

            # Print information about the ELF file
            print("ELF file information:")
            print(f"  Entry point: 0x{elf_file.header.e_entry:x}")
            print(f"  Architecture: {elf_file.get_machine_arch()}")
            print(f"  Number of sections: {elf_file.num_sections()}")
            print(f"  Number of segments: {elf_file.num_segments()}")

            # Iterate over the sections and print information about each section
            # print("\nSections:")
            for section in elf_file.iter_sections():
                print(f"  {section.name} (type: {section['sh_type']}, size: {section['sh_size']})")
            
            self.entry_point = elf_file.header.e_entry
            
            output_file = "ELF_BIN.txt"
            with open(output_file, 'w') as output_f:
                output_f.write("Contents of ELF file:\n")
                hex_dump = [" ".join(f"{b:02X}" for b in self.elf_data[i:i+16]) for i in range(0, len(self.elf_data), 16)]
                for line in hex_dump:
                    output_f.write(line + "\n")
            
            for section in elf_file.iter_sections():
                # Check if the section is of type SHT_SYMTAB (symbol table)
                if section.header['sh_type'] == 'SHT_SYMTAB':
                    # Iterate over all symbols in the symbol table
                    for symbol in section.iter_symbols():
                        if symbol.name == '__stack_start':
                            # Get the address of the stack pointer
                            self.stack_start = symbol.entry.st_value
                            print(f'STACK_START : {hex(self.stack_start)}')
                        elif symbol.name == '_stack_end':
                            # Get the address of the stack pointer
                            self.stack_end = symbol.entry.st_value
                            print(f'STACK_END : {hex(self.stack_end)}')
                        elif symbol.name == '_heap_start':
                            # Get the address of the heap start pointer
                            self.heap_start = symbol.entry.st_value
                            print(f'HEAP_SATRT : {hex(self.heap_start)}')
                        elif symbol.name == '_heap_end':
                            # Get the address of the heap end pointer
                            self.heap_end = symbol.entry.st_value
                            print(f'HEAP_END : {hex(self.heap_end)}')

            # # You can also access the symbol table and print information about symbols
            # if '.symtab' in elf_file:
            #     print("\nSymbol table:")
            #     for symbol in elf_file.get_section_by_name('.symtab').iter_symbols():
            #         print(f"  {symbol.name} (value: 0x{symbol['st_value']:x}, size: {symbol['st_size']})")
            
            text_section = elf_file.get_section_by_name('.text')
            elf_text = ""
            if text_section:
                # Get the data from the section
                data = text_section.data()
                
                md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
                for insn in md.disasm(data, 0x0000):  # Replace 0x1000 with the address of the start of the section
                    elf_text += f"{insn.address}    {insn.mnemonic} {insn.op_str}\n"
                with open("Instruction.txt", 'w') as f:
                    f.write(elf_text)
            else:
                print("No .text section found in the ELF file.")
        return self.elf_data
    
    def create_c_code_array(self, data):
        c_code_array = []
        for byte in data:
            c_code_array.append(hex(byte))
    
        # Group the bytes into 16 bytes per line for better readability
        c_code_lines = [', '.join(c_code_array[i:i+16]) for i in range(16*4096, len(c_code_array), 16)]
        
        # Join the lines with newlines and add C code array syntax
        c_code = "const unsigned char elf_data[] = {\n"
        c_code += ",\n".join(c_code_lines)
        c_code += "\n};\n"
        
        # print(c_code)
    
        return c_code
    
    def save_c_code_to_file(self, c_code, file_name):
        output_filename = file_name + '_array.c'
        with open(output_filename, 'w') as f:
            f.write(c_code)
            
    def compile_code(self, file_name):
        if self.do_compile == True:
            # Define the command to be executed
            command = f"aarch64-none-elf-gcc -march=armv8-a -mcpu=cortex-a53 -nostartfiles -T {file_name}.ld -I./include {file_name}.cpp ./lib/libxil.a  -o {file_name}.elf"
    
            # Execute the command
            result = subprocess.run(command, shell=True)
    
            # Check the return code
            if result.returncode == 0:
                print("Compilation successful.")
            else:
                print("Compilation failed.")
                print(result)
        else:
            print("No Compile")
    def create_TCP_packet(self):
        data_packets = []
        
        elf_list = []
        data = "#BIN"
        header_data = ""
        for byte in self.elf_data:
            elf_list.append(hex(byte))
        for i in range(16*4096,len(elf_list)):
            if (len(data) + len(str(elf_list[i]))) > 512:
                data += '#!EOL#'
                data_packets.append(data)
                data = "#BIN"
            data += f'#{str(elf_list[i])}'
        if data != "":
            data += '#!EOL#'
            data_packets.append(data)
        header_data += f'#BIN#save_binary#{hex(self.entry_point)}'
        header_data += f'#{hex(self.stack_start)}'
        header_data += f'#{hex(self.stack_end)}'
        header_data += f'#{hex(self.heap_start)}'
        header_data += f'#{hex(self.heap_end)}'
        header_data += f'#{hex(len(data_packets))}'
        header_data += f'#!EOL#'
        data_packets.insert(0,header_data)
        
        return data_packets
            
if __name__ == "__main__":
    do_compile = True
    
    comp = Compiler()
    file_name = "hello"
    #Compile C Code
    comp.do_compile = do_compile
    comp.compile_code(file_name)
    
    # Read the ELF file
    elf_data = comp.read_elf_file(file_name)

    # Convert to C code array representation
    c_code = comp.create_c_code_array(elf_data)

    # Save the C code to a file
    comp.save_c_code_to_file(c_code, file_name)
    #print(comp.create_TCP_packet())