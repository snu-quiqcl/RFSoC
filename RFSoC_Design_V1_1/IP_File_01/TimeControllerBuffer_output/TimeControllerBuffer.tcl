# Set the project name and working directory
set project_name "TimeControllerBuffer"
set project_dir "E:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_01/TimeControllerBuffer_output"

# Create a new project
create_project ${project_name} ${project_dir}/${project_name} -part xczu28dr-ffvg1517-2-e

# Add the FIFO IP file to the project
add_files -norecurse {E:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_01/TimeControllerBuffer/TimeControllerBuffer.sv}

# Set the target board
set boardpath {E:/Xilinx/Vivado/2020.2/data/boards/board_files}
set_param board.repoPaths [list $boardpath]
set_property BOARD_PART xilinx.com:zcu111:part0:1.4 [current_project]

ipx::package_project -root_dir E:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_01/TimeControllerBuffer_output -vendor xilinx.com -library user -taxonomy /UserIP
ipx::save_core [ipx::current_core]
set_property  ip_repo_paths  E:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_01/TimeControllerBuffer_output [current_project]
update_ip_catalog
set_property top TimeControllerBuffer [current_fileset]
set_property top_file { E:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_01/TimeControllerBuffer/TimeControllerBuffer.sv } [current_fileset]
