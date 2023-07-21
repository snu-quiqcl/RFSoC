# -*- coding: utf-8 -*-
"""
Created on Fri Jul 21 12:43:14 2023

@author: QC109_4, GPT
"""
import subprocess

def run_vivado_tcl(tcl_commands):
    vivado_executable = r"E:\Xilinx\Vivado\2020.2\bin\vivado.bat"  # Replace with the actual path to vivado.bat

    # Start Vivado in batch mode and pass the TCL commands as input
    process = subprocess.Popen([vivado_executable, "-mode", "batch", "-source", tcl_commands],
                               stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)

    # Wait for the process to complete
    stdout, stderr = process.communicate()

    # Print the output and error messages
    print(stdout)
    print(stderr)

if __name__ == "__main__":
    # Replace "your_tcl_file.tcl" with the path to your actual TCL file
    run_vivado_tcl("IP_File00.tcl")