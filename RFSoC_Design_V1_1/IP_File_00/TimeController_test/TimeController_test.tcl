# Set the project name and working directory
set project_name "TimeController_test"
set project_dir "C:/Jeonghyun/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/TimeController_test"

# Create a new project
create_project ${project_name} ${project_dir}/${project_name} -part xczu28dr-ffvg1517-2-e

# Add the FIFO IP file to the project
add_files -norecurse {C:/Jeonghyun/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/TimeController/AXI2COM.sv}
add_files -norecurse {C:/Jeonghyun/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/TimeController/TimeController.sv}
add_files -norecurse {C:/Jeonghyun/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/TimeController/Timestamp_Counter.sv}

# Set the target board
set boardpath {C:/Xilinx/Vivado/2020.2/data/boards/board_files}
set_param board.repoPaths [list $boardpath]
set_property BOARD_PART xilinx.com:zcu111:part0:1.4 [current_project]

ipx::package_project -root_dir C:/Jeonghyun/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/TimeController_test -vendor xilinx.com -library user -taxonomy /UserIP
ipx::save_core [ipx::current_core]
set_property  ip_repo_paths  C:/Jeonghyun/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/TimeController_test [current_project]
update_ip_catalog
