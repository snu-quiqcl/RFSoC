# Set the project name and working directory
set project_name "DAC_Controller"
set project_dir "C:/Jeonghyun/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/DAC_Controller"

# Create a new project
create_project ${project_name} ${project_dir}/${project_name} -part xczu28dr-ffvg1517-2-e

# Add the FIFO IP file to the project
add_files -norecurse {C:/Jeonghyun/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/DAC_Controller/AXI2FIFO.sv}
add_files -norecurse {C:/Jeonghyun/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/DAC_Controller/DAC_Controller.sv}
add_files -norecurse {C:/Jeonghyun/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/DAC_Controller/DDS_Controller.sv}
add_files -norecurse {C:/Jeonghyun/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/DAC_Controller/GPO_Core.sv}
add_files -norecurse {C:/Jeonghyun/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/DAC_Controller/RFDC_DDS.sv}
add_files -norecurse {C:/Jeonghyun/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/DAC_Controller/RTO_Core.sv}
add_files -norecurse {C:/Jeonghyun/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/DAC_Controller/fifo_generator_0/fifo_generator_0.xci}
add_files -norecurse {C:/Jeonghyun/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/DAC_Controller/fifo_generator_1/fifo_generator_1.xci}
add_files -norecurse {C:/Jeonghyun/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/DAC_Controller/fifo_generator_2/fifo_generator_2.xci}
add_files -norecurse {C:/Jeonghyun/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/DAC_Controller/fifo_generator_3/fifo_generator_3.xci}

# Set the target board
set boardpath {C:/Xilinx/Vivado/2020.2/data/boards/board_files}
set_param board.repoPaths [list $boardpath]
set_property BOARD_PART xilinx.com:zcu111:part0:1.4 [current_project]

create_ip -dir C:/Jeonghyun/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/DAC_Controller -name dds_compiler -vendor xilinx.com -library ip -version 6.0 -module_name dds_compiler_0
set_property -dict [list CONFIG.PartsPresent {SIN_COS_LUT_only} CONFIG.Phase_Width {14} CONFIG.Output_Width {14} CONFIG.Output_Selection {Sine} CONFIG.Optimization_Goal {Speed} CONFIG.Latency_Configuration {Configurable} CONFIG.Latency {1} CONFIG.Parameter_Entry {Hardware_Parameters} CONFIG.Noise_Shaping {None} CONFIG.Has_Phase_Out {false} CONFIG.DATA_Has_TLAST {Not_Required} CONFIG.S_PHASE_Has_TUSER {Not_Required} CONFIG.M_DATA_Has_TUSER {Not_Required} CONFIG.Output_Frequency1 {0} CONFIG.PINC1 {0}] [get_ips dds_compiler_0]

create_ip -dir C:/Jeonghyun/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/DAC_Controller -name dds_compiler -vendor xilinx.com -library ip -version 6.0 -module_name dds_compiler_1
set_property -dict [list CONFIG.PartsPresent {SIN_COS_LUT_only} CONFIG.Phase_Width {14} CONFIG.Output_Width {14} CONFIG.Output_Selection {Sine} CONFIG.Optimization_Goal {Speed} CONFIG.Latency_Configuration {Configurable} CONFIG.Latency {1} CONFIG.Parameter_Entry {Hardware_Parameters} CONFIG.Noise_Shaping {None} CONFIG.Has_Phase_Out {false} CONFIG.DATA_Has_TLAST {Not_Required} CONFIG.S_PHASE_Has_TUSER {Not_Required} CONFIG.M_DATA_Has_TUSER {Not_Required} CONFIG.Output_Frequency1 {0} CONFIG.PINC1 {0}] [get_ips dds_compiler_1]

create_ip -dir C:/Jeonghyun/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/DAC_Controller -name dds_compiler -vendor xilinx.com -library ip -version 6.0 -module_name dds_compiler_2
set_property -dict [list CONFIG.PartsPresent {SIN_COS_LUT_only} CONFIG.Phase_Width {14} CONFIG.Output_Width {14} CONFIG.Output_Selection {Sine} CONFIG.Optimization_Goal {Speed} CONFIG.Latency_Configuration {Configurable} CONFIG.Latency {1} CONFIG.Parameter_Entry {Hardware_Parameters} CONFIG.Noise_Shaping {None} CONFIG.Has_Phase_Out {false} CONFIG.DATA_Has_TLAST {Not_Required} CONFIG.S_PHASE_Has_TUSER {Not_Required} CONFIG.M_DATA_Has_TUSER {Not_Required} CONFIG.Output_Frequency1 {0} CONFIG.PINC1 {0}] [get_ips dds_compiler_2]

create_ip -dir C:/Jeonghyun/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/DAC_Controller -name dds_compiler -vendor xilinx.com -library ip -version 6.0 -module_name dds_compiler_3
set_property -dict [list CONFIG.PartsPresent {SIN_COS_LUT_only} CONFIG.Phase_Width {14} CONFIG.Output_Width {14} CONFIG.Output_Selection {Sine} CONFIG.Optimization_Goal {Speed} CONFIG.Latency_Configuration {Configurable} CONFIG.Latency {1} CONFIG.Parameter_Entry {Hardware_Parameters} CONFIG.Noise_Shaping {None} CONFIG.Has_Phase_Out {false} CONFIG.DATA_Has_TLAST {Not_Required} CONFIG.S_PHASE_Has_TUSER {Not_Required} CONFIG.M_DATA_Has_TUSER {Not_Required} CONFIG.Output_Frequency1 {0} CONFIG.PINC1 {0}] [get_ips dds_compiler_3]

create_ip -dir C:/Jeonghyun/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/DAC_Controller -name dds_compiler -vendor xilinx.com -library ip -version 6.0 -module_name dds_compiler_4
set_property -dict [list CONFIG.PartsPresent {SIN_COS_LUT_only} CONFIG.Phase_Width {14} CONFIG.Output_Width {14} CONFIG.Output_Selection {Sine} CONFIG.Optimization_Goal {Speed} CONFIG.Latency_Configuration {Configurable} CONFIG.Latency {1} CONFIG.Parameter_Entry {Hardware_Parameters} CONFIG.Noise_Shaping {None} CONFIG.Has_Phase_Out {false} CONFIG.DATA_Has_TLAST {Not_Required} CONFIG.S_PHASE_Has_TUSER {Not_Required} CONFIG.M_DATA_Has_TUSER {Not_Required} CONFIG.Output_Frequency1 {0} CONFIG.PINC1 {0}] [get_ips dds_compiler_4]

create_ip -dir C:/Jeonghyun/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/DAC_Controller -name dds_compiler -vendor xilinx.com -library ip -version 6.0 -module_name dds_compiler_5
set_property -dict [list CONFIG.PartsPresent {SIN_COS_LUT_only} CONFIG.Phase_Width {14} CONFIG.Output_Width {14} CONFIG.Output_Selection {Sine} CONFIG.Optimization_Goal {Speed} CONFIG.Latency_Configuration {Configurable} CONFIG.Latency {1} CONFIG.Parameter_Entry {Hardware_Parameters} CONFIG.Noise_Shaping {None} CONFIG.Has_Phase_Out {false} CONFIG.DATA_Has_TLAST {Not_Required} CONFIG.S_PHASE_Has_TUSER {Not_Required} CONFIG.M_DATA_Has_TUSER {Not_Required} CONFIG.Output_Frequency1 {0} CONFIG.PINC1 {0}] [get_ips dds_compiler_5]

create_ip -dir C:/Jeonghyun/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/DAC_Controller -name dds_compiler -vendor xilinx.com -library ip -version 6.0 -module_name dds_compiler_6
set_property -dict [list CONFIG.PartsPresent {SIN_COS_LUT_only} CONFIG.Phase_Width {14} CONFIG.Output_Width {14} CONFIG.Output_Selection {Sine} CONFIG.Optimization_Goal {Speed} CONFIG.Latency_Configuration {Configurable} CONFIG.Latency {1} CONFIG.Parameter_Entry {Hardware_Parameters} CONFIG.Noise_Shaping {None} CONFIG.Has_Phase_Out {false} CONFIG.DATA_Has_TLAST {Not_Required} CONFIG.S_PHASE_Has_TUSER {Not_Required} CONFIG.M_DATA_Has_TUSER {Not_Required} CONFIG.Output_Frequency1 {0} CONFIG.PINC1 {0}] [get_ips dds_compiler_6]

create_ip -dir C:/Jeonghyun/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/DAC_Controller -name dds_compiler -vendor xilinx.com -library ip -version 6.0 -module_name dds_compiler_7
set_property -dict [list CONFIG.PartsPresent {SIN_COS_LUT_only} CONFIG.Phase_Width {14} CONFIG.Output_Width {14} CONFIG.Output_Selection {Sine} CONFIG.Optimization_Goal {Speed} CONFIG.Latency_Configuration {Configurable} CONFIG.Latency {1} CONFIG.Parameter_Entry {Hardware_Parameters} CONFIG.Noise_Shaping {None} CONFIG.Has_Phase_Out {false} CONFIG.DATA_Has_TLAST {Not_Required} CONFIG.S_PHASE_Has_TUSER {Not_Required} CONFIG.M_DATA_Has_TUSER {Not_Required} CONFIG.Output_Frequency1 {0} CONFIG.PINC1 {0}] [get_ips dds_compiler_7]

create_ip -dir C:/Jeonghyun/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/DAC_Controller -name dds_compiler -vendor xilinx.com -library ip -version 6.0 -module_name dds_compiler_8
set_property -dict [list CONFIG.PartsPresent {SIN_COS_LUT_only} CONFIG.Phase_Width {14} CONFIG.Output_Width {14} CONFIG.Output_Selection {Sine} CONFIG.Optimization_Goal {Speed} CONFIG.Latency_Configuration {Configurable} CONFIG.Latency {1} CONFIG.Parameter_Entry {Hardware_Parameters} CONFIG.Noise_Shaping {None} CONFIG.Has_Phase_Out {false} CONFIG.DATA_Has_TLAST {Not_Required} CONFIG.S_PHASE_Has_TUSER {Not_Required} CONFIG.M_DATA_Has_TUSER {Not_Required} CONFIG.Output_Frequency1 {0} CONFIG.PINC1 {0}] [get_ips dds_compiler_8]

create_ip -dir C:/Jeonghyun/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/DAC_Controller -name dds_compiler -vendor xilinx.com -library ip -version 6.0 -module_name dds_compiler_9
set_property -dict [list CONFIG.PartsPresent {SIN_COS_LUT_only} CONFIG.Phase_Width {14} CONFIG.Output_Width {14} CONFIG.Output_Selection {Sine} CONFIG.Optimization_Goal {Speed} CONFIG.Latency_Configuration {Configurable} CONFIG.Latency {1} CONFIG.Parameter_Entry {Hardware_Parameters} CONFIG.Noise_Shaping {None} CONFIG.Has_Phase_Out {false} CONFIG.DATA_Has_TLAST {Not_Required} CONFIG.S_PHASE_Has_TUSER {Not_Required} CONFIG.M_DATA_Has_TUSER {Not_Required} CONFIG.Output_Frequency1 {0} CONFIG.PINC1 {0}] [get_ips dds_compiler_9]

create_ip -dir C:/Jeonghyun/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/DAC_Controller -name dds_compiler -vendor xilinx.com -library ip -version 6.0 -module_name dds_compiler_10
set_property -dict [list CONFIG.PartsPresent {SIN_COS_LUT_only} CONFIG.Phase_Width {14} CONFIG.Output_Width {14} CONFIG.Output_Selection {Sine} CONFIG.Optimization_Goal {Speed} CONFIG.Latency_Configuration {Configurable} CONFIG.Latency {1} CONFIG.Parameter_Entry {Hardware_Parameters} CONFIG.Noise_Shaping {None} CONFIG.Has_Phase_Out {false} CONFIG.DATA_Has_TLAST {Not_Required} CONFIG.S_PHASE_Has_TUSER {Not_Required} CONFIG.M_DATA_Has_TUSER {Not_Required} CONFIG.Output_Frequency1 {0} CONFIG.PINC1 {0}] [get_ips dds_compiler_10]

create_ip -dir C:/Jeonghyun/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/DAC_Controller -name dds_compiler -vendor xilinx.com -library ip -version 6.0 -module_name dds_compiler_11
set_property -dict [list CONFIG.PartsPresent {SIN_COS_LUT_only} CONFIG.Phase_Width {14} CONFIG.Output_Width {14} CONFIG.Output_Selection {Sine} CONFIG.Optimization_Goal {Speed} CONFIG.Latency_Configuration {Configurable} CONFIG.Latency {1} CONFIG.Parameter_Entry {Hardware_Parameters} CONFIG.Noise_Shaping {None} CONFIG.Has_Phase_Out {false} CONFIG.DATA_Has_TLAST {Not_Required} CONFIG.S_PHASE_Has_TUSER {Not_Required} CONFIG.M_DATA_Has_TUSER {Not_Required} CONFIG.Output_Frequency1 {0} CONFIG.PINC1 {0}] [get_ips dds_compiler_11]

create_ip -dir C:/Jeonghyun/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/DAC_Controller -name dds_compiler -vendor xilinx.com -library ip -version 6.0 -module_name dds_compiler_12
set_property -dict [list CONFIG.PartsPresent {SIN_COS_LUT_only} CONFIG.Phase_Width {14} CONFIG.Output_Width {14} CONFIG.Output_Selection {Sine} CONFIG.Optimization_Goal {Speed} CONFIG.Latency_Configuration {Configurable} CONFIG.Latency {1} CONFIG.Parameter_Entry {Hardware_Parameters} CONFIG.Noise_Shaping {None} CONFIG.Has_Phase_Out {false} CONFIG.DATA_Has_TLAST {Not_Required} CONFIG.S_PHASE_Has_TUSER {Not_Required} CONFIG.M_DATA_Has_TUSER {Not_Required} CONFIG.Output_Frequency1 {0} CONFIG.PINC1 {0}] [get_ips dds_compiler_12]

create_ip -dir C:/Jeonghyun/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/DAC_Controller -name dds_compiler -vendor xilinx.com -library ip -version 6.0 -module_name dds_compiler_13
set_property -dict [list CONFIG.PartsPresent {SIN_COS_LUT_only} CONFIG.Phase_Width {14} CONFIG.Output_Width {14} CONFIG.Output_Selection {Sine} CONFIG.Optimization_Goal {Speed} CONFIG.Latency_Configuration {Configurable} CONFIG.Latency {1} CONFIG.Parameter_Entry {Hardware_Parameters} CONFIG.Noise_Shaping {None} CONFIG.Has_Phase_Out {false} CONFIG.DATA_Has_TLAST {Not_Required} CONFIG.S_PHASE_Has_TUSER {Not_Required} CONFIG.M_DATA_Has_TUSER {Not_Required} CONFIG.Output_Frequency1 {0} CONFIG.PINC1 {0}] [get_ips dds_compiler_13]

create_ip -dir C:/Jeonghyun/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/DAC_Controller -name dds_compiler -vendor xilinx.com -library ip -version 6.0 -module_name dds_compiler_14
set_property -dict [list CONFIG.PartsPresent {SIN_COS_LUT_only} CONFIG.Phase_Width {14} CONFIG.Output_Width {14} CONFIG.Output_Selection {Sine} CONFIG.Optimization_Goal {Speed} CONFIG.Latency_Configuration {Configurable} CONFIG.Latency {1} CONFIG.Parameter_Entry {Hardware_Parameters} CONFIG.Noise_Shaping {None} CONFIG.Has_Phase_Out {false} CONFIG.DATA_Has_TLAST {Not_Required} CONFIG.S_PHASE_Has_TUSER {Not_Required} CONFIG.M_DATA_Has_TUSER {Not_Required} CONFIG.Output_Frequency1 {0} CONFIG.PINC1 {0}] [get_ips dds_compiler_14]

create_ip -dir C:/Jeonghyun/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_00/DAC_Controller -name dds_compiler -vendor xilinx.com -library ip -version 6.0 -module_name dds_compiler_15
set_property -dict [list CONFIG.PartsPresent {SIN_COS_LUT_only} CONFIG.Phase_Width {14} CONFIG.Output_Width {14} CONFIG.Output_Selection {Sine} CONFIG.Optimization_Goal {Speed} CONFIG.Latency_Configuration {Configurable} CONFIG.Latency {1} CONFIG.Parameter_Entry {Hardware_Parameters} CONFIG.Noise_Shaping {None} CONFIG.Has_Phase_Out {false} CONFIG.DATA_Has_TLAST {Not_Required} CONFIG.S_PHASE_Has_TUSER {Not_Required} CONFIG.M_DATA_Has_TUSER {Not_Required} CONFIG.Output_Frequency1 {0} CONFIG.PINC1 {0}] [get_ips dds_compiler_15]

