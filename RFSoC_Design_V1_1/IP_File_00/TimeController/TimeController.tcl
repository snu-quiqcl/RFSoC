# Set the project name and working directory
set project_name "TimeController"
set project_dir "E:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/TimeController"

# Create a new project
create_project ${project_name} ${project_dir}/${project_name} -part xczu28dr-ffvg1517-2-e

# Add the FIFO IP file to the project
add_files -norecurse {E:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/TimeController/AXI2COM.sv}
add_files -norecurse {E:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/TimeController/TimeController.sv}
add_files -norecurse {E:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/TimeController/Timestamp_Counter.sv}

# Set the target board
set boardpath {E:/Xilinx/Vivado/2020.2/data/boards/board_files}
set_param board.repoPaths [list $boardpath]
set_property BOARD_PART xilinx.com:zcu111:part0:1.4 [current_project]
