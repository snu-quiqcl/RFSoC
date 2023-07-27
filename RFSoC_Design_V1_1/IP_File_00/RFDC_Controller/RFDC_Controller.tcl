# Set the project name and working directory
set project_name "RFDC_Controller"
set project_dir "E:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/RFDC_Controller"

# Create a new project
create_project ${project_name} ${project_dir}/${project_name} -part xczu28dr-ffvg1517-2-e

# Add the FIFO IP file to the project
add_files -norecurse {E:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/RFDC_Controller/AXI2FIFO.sv}
add_files -norecurse {E:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/RFDC_Controller/DAC_Controller.sv}
add_files -norecurse {E:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/RFDC_Controller/GPO_Core.sv}
add_files -norecurse {E:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/RFDC_Controller/RFDC_Controller.sv}
add_files -norecurse {E:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/RFDC_Controller/RTO_Core.sv}
add_files -norecurse {E:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/RFDC_Controller/fifo_generator_0/fifo_generator_0.xci}
add_files -norecurse {E:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/RFDC_Controller/fifo_generator_1/fifo_generator_1.xci}
add_files -norecurse {E:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/RFDC_Controller/fifo_generator_2/fifo_generator_2.xci}
add_files -norecurse {E:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/RFDC_Controller/fifo_generator_3/fifo_generator_3.xci}

# Set the target board
set boardpath {E:/Xilinx/Vivado/2020.2/data/boards/board_files}
set_param board.repoPaths [list $boardpath]
set_property BOARD_PART xilinx.com:zcu111:part0:1.4 [current_project]
