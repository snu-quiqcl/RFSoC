
################################################################
# This is a generated script based on design: rfdc_ex
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source rfdc_ex_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# exdes_rfdac_data_bram_stim

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xczu28dr-ffvg1517-2-e
   set_property BOARD_PART xilinx.com:zcu111:part0:1.4 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name rfdc_ex

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set dac0_clk [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 dac0_clk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {6400000000} \
   ] $dac0_clk

  set s_axi [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {32} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.FREQ_HZ {100000000} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_CACHE {1} \
   CONFIG.HAS_LOCK {1} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {1} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {0} \
   CONFIG.MAX_BURST_LENGTH {1} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PROTOCOL {AXI4LITE} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $s_axi

  set sysref_in [ create_bd_intf_port -mode Slave -vlnv xilinx.com:display_usp_rf_data_converter:diff_pins_rtl:1.0 sysref_in ]

  set vout00 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 vout00 ]


  # Create ports
  set clk_dac0 [ create_bd_port -dir O -type clk clk_dac0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {50000000} \
 ] $clk_dac0
  set dac0_axis_aclk [ create_bd_port -dir I -type clk -freq_hz 400000000 dac0_axis_aclk ]
  set dac0_axis_aresetn [ create_bd_port -dir I -type rst dac0_axis_aresetn ]
  set irq [ create_bd_port -dir O irq ]
  set s_axi_aclk [ create_bd_port -dir I -type clk -freq_hz 100000000 s_axi_aclk ]
  set s_axi_aresetn [ create_bd_port -dir I -type rst s_axi_aresetn ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $s_axi_aresetn

  # Create instance: dac_source_i, and set properties
  set block_name exdes_rfdac_data_bram_stim
  set block_cell_name dac_source_i
  if { [catch {set dac_source_i [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $dac_source_i eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.axi_addr_top {14} \
   CONFIG.mem_size {131072} \
   CONFIG.use_div2_clk_0 {0} \
   CONFIG.use_div2_clk_1 {0} \
   CONFIG.use_div2_clk_2 {0} \
   CONFIG.use_div2_clk_3 {0} \
 ] $dac_source_i

  # Create instance: smartconnect_0, and set properties
  set smartconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 smartconnect_0 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {2} \
   CONFIG.NUM_SI {1} \
 ] $smartconnect_0

  # Create instance: usp_rf_data_converter_0, and set properties
  set usp_rf_data_converter_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:usp_rf_data_converter:2.4 usp_rf_data_converter_0 ]
  set_property -dict [ list \
   CONFIG.ADC0_Band {0} \
   CONFIG.ADC0_Clock_Dist {0} \
   CONFIG.ADC0_Clock_Source {0} \
   CONFIG.ADC0_Clock_Source_MX {0} \
   CONFIG.ADC0_Enable {0} \
   CONFIG.ADC0_Fabric_Freq {0.0} \
   CONFIG.ADC0_Link_Coupling {0} \
   CONFIG.ADC0_Multi_Tile_Sync {false} \
   CONFIG.ADC0_Outclk_Freq {15.625} \
   CONFIG.ADC0_PLL_Enable {false} \
   CONFIG.ADC0_Refclk_Div {1} \
   CONFIG.ADC0_Refclk_Freq {2000.000} \
   CONFIG.ADC0_Sampling_Rate {2.0} \
   CONFIG.ADC1_Band {0} \
   CONFIG.ADC1_Clock_Dist {0} \
   CONFIG.ADC1_Clock_Source {1} \
   CONFIG.ADC1_Clock_Source_MX {1} \
   CONFIG.ADC1_Enable {0} \
   CONFIG.ADC1_Fabric_Freq {0.0} \
   CONFIG.ADC1_Link_Coupling {0} \
   CONFIG.ADC1_Multi_Tile_Sync {false} \
   CONFIG.ADC1_Outclk_Freq {15.625} \
   CONFIG.ADC1_PLL_Enable {false} \
   CONFIG.ADC1_Refclk_Div {1} \
   CONFIG.ADC1_Refclk_Freq {2000.000} \
   CONFIG.ADC1_Sampling_Rate {2.0} \
   CONFIG.ADC224_En {false} \
   CONFIG.ADC225_En {false} \
   CONFIG.ADC226_En {false} \
   CONFIG.ADC227_En {false} \
   CONFIG.ADC2_Band {0} \
   CONFIG.ADC2_Clock_Dist {0} \
   CONFIG.ADC2_Clock_Source {2} \
   CONFIG.ADC2_Clock_Source_MX {2} \
   CONFIG.ADC2_Enable {0} \
   CONFIG.ADC2_Fabric_Freq {0.0} \
   CONFIG.ADC2_Link_Coupling {0} \
   CONFIG.ADC2_Multi_Tile_Sync {false} \
   CONFIG.ADC2_Outclk_Freq {15.625} \
   CONFIG.ADC2_PLL_Enable {false} \
   CONFIG.ADC2_Refclk_Div {1} \
   CONFIG.ADC2_Refclk_Freq {2000.000} \
   CONFIG.ADC2_Sampling_Rate {2.0} \
   CONFIG.ADC3_Band {0} \
   CONFIG.ADC3_Clock_Dist {0} \
   CONFIG.ADC3_Clock_Source {3} \
   CONFIG.ADC3_Clock_Source_MX {3} \
   CONFIG.ADC3_Enable {0} \
   CONFIG.ADC3_Fabric_Freq {0.0} \
   CONFIG.ADC3_Link_Coupling {0} \
   CONFIG.ADC3_Multi_Tile_Sync {false} \
   CONFIG.ADC3_Outclk_Freq {15.625} \
   CONFIG.ADC3_PLL_Enable {false} \
   CONFIG.ADC3_Refclk_Div {1} \
   CONFIG.ADC3_Refclk_Freq {2000.000} \
   CONFIG.ADC3_Sampling_Rate {2.0} \
   CONFIG.ADC_Bypass_BG_Cal00 {false} \
   CONFIG.ADC_Bypass_BG_Cal01 {false} \
   CONFIG.ADC_Bypass_BG_Cal02 {false} \
   CONFIG.ADC_Bypass_BG_Cal03 {false} \
   CONFIG.ADC_Bypass_BG_Cal10 {false} \
   CONFIG.ADC_Bypass_BG_Cal11 {false} \
   CONFIG.ADC_Bypass_BG_Cal12 {false} \
   CONFIG.ADC_Bypass_BG_Cal13 {false} \
   CONFIG.ADC_Bypass_BG_Cal20 {false} \
   CONFIG.ADC_Bypass_BG_Cal21 {false} \
   CONFIG.ADC_Bypass_BG_Cal22 {false} \
   CONFIG.ADC_Bypass_BG_Cal23 {false} \
   CONFIG.ADC_Bypass_BG_Cal30 {false} \
   CONFIG.ADC_Bypass_BG_Cal31 {false} \
   CONFIG.ADC_Bypass_BG_Cal32 {false} \
   CONFIG.ADC_Bypass_BG_Cal33 {false} \
   CONFIG.ADC_CalOpt_Mode00 {1} \
   CONFIG.ADC_CalOpt_Mode01 {1} \
   CONFIG.ADC_CalOpt_Mode02 {1} \
   CONFIG.ADC_CalOpt_Mode03 {1} \
   CONFIG.ADC_CalOpt_Mode10 {1} \
   CONFIG.ADC_CalOpt_Mode11 {1} \
   CONFIG.ADC_CalOpt_Mode12 {1} \
   CONFIG.ADC_CalOpt_Mode13 {1} \
   CONFIG.ADC_CalOpt_Mode20 {1} \
   CONFIG.ADC_CalOpt_Mode21 {1} \
   CONFIG.ADC_CalOpt_Mode22 {1} \
   CONFIG.ADC_CalOpt_Mode23 {1} \
   CONFIG.ADC_CalOpt_Mode30 {1} \
   CONFIG.ADC_CalOpt_Mode31 {1} \
   CONFIG.ADC_CalOpt_Mode32 {1} \
   CONFIG.ADC_CalOpt_Mode33 {1} \
   CONFIG.ADC_Coarse_Mixer_Freq00 {0} \
   CONFIG.ADC_Coarse_Mixer_Freq01 {0} \
   CONFIG.ADC_Coarse_Mixer_Freq02 {0} \
   CONFIG.ADC_Coarse_Mixer_Freq03 {0} \
   CONFIG.ADC_Coarse_Mixer_Freq10 {0} \
   CONFIG.ADC_Coarse_Mixer_Freq11 {0} \
   CONFIG.ADC_Coarse_Mixer_Freq12 {0} \
   CONFIG.ADC_Coarse_Mixer_Freq13 {0} \
   CONFIG.ADC_Coarse_Mixer_Freq20 {0} \
   CONFIG.ADC_Coarse_Mixer_Freq21 {0} \
   CONFIG.ADC_Coarse_Mixer_Freq22 {0} \
   CONFIG.ADC_Coarse_Mixer_Freq23 {0} \
   CONFIG.ADC_Coarse_Mixer_Freq30 {0} \
   CONFIG.ADC_Coarse_Mixer_Freq31 {0} \
   CONFIG.ADC_Coarse_Mixer_Freq32 {0} \
   CONFIG.ADC_Coarse_Mixer_Freq33 {0} \
   CONFIG.ADC_DSA_RTS {false} \
   CONFIG.ADC_Data_Type00 {0} \
   CONFIG.ADC_Data_Type01 {0} \
   CONFIG.ADC_Data_Type02 {0} \
   CONFIG.ADC_Data_Type03 {0} \
   CONFIG.ADC_Data_Type10 {0} \
   CONFIG.ADC_Data_Type11 {0} \
   CONFIG.ADC_Data_Type12 {0} \
   CONFIG.ADC_Data_Type13 {0} \
   CONFIG.ADC_Data_Type20 {0} \
   CONFIG.ADC_Data_Type21 {0} \
   CONFIG.ADC_Data_Type22 {0} \
   CONFIG.ADC_Data_Type23 {0} \
   CONFIG.ADC_Data_Type30 {0} \
   CONFIG.ADC_Data_Type31 {0} \
   CONFIG.ADC_Data_Type32 {0} \
   CONFIG.ADC_Data_Type33 {0} \
   CONFIG.ADC_Data_Width00 {8} \
   CONFIG.ADC_Data_Width01 {8} \
   CONFIG.ADC_Data_Width02 {8} \
   CONFIG.ADC_Data_Width03 {8} \
   CONFIG.ADC_Data_Width10 {8} \
   CONFIG.ADC_Data_Width11 {8} \
   CONFIG.ADC_Data_Width12 {8} \
   CONFIG.ADC_Data_Width13 {8} \
   CONFIG.ADC_Data_Width20 {8} \
   CONFIG.ADC_Data_Width21 {8} \
   CONFIG.ADC_Data_Width22 {8} \
   CONFIG.ADC_Data_Width23 {8} \
   CONFIG.ADC_Data_Width30 {8} \
   CONFIG.ADC_Data_Width31 {8} \
   CONFIG.ADC_Data_Width32 {8} \
   CONFIG.ADC_Data_Width33 {8} \
   CONFIG.ADC_Debug {false} \
   CONFIG.ADC_Decimation_Mode00 {0} \
   CONFIG.ADC_Decimation_Mode01 {0} \
   CONFIG.ADC_Decimation_Mode02 {0} \
   CONFIG.ADC_Decimation_Mode03 {0} \
   CONFIG.ADC_Decimation_Mode10 {0} \
   CONFIG.ADC_Decimation_Mode11 {0} \
   CONFIG.ADC_Decimation_Mode12 {0} \
   CONFIG.ADC_Decimation_Mode13 {0} \
   CONFIG.ADC_Decimation_Mode20 {0} \
   CONFIG.ADC_Decimation_Mode21 {0} \
   CONFIG.ADC_Decimation_Mode22 {0} \
   CONFIG.ADC_Decimation_Mode23 {0} \
   CONFIG.ADC_Decimation_Mode30 {0} \
   CONFIG.ADC_Decimation_Mode31 {0} \
   CONFIG.ADC_Decimation_Mode32 {0} \
   CONFIG.ADC_Decimation_Mode33 {0} \
   CONFIG.ADC_Dither00 {true} \
   CONFIG.ADC_Dither01 {true} \
   CONFIG.ADC_Dither02 {true} \
   CONFIG.ADC_Dither03 {true} \
   CONFIG.ADC_Dither10 {true} \
   CONFIG.ADC_Dither11 {true} \
   CONFIG.ADC_Dither12 {true} \
   CONFIG.ADC_Dither13 {true} \
   CONFIG.ADC_Dither20 {true} \
   CONFIG.ADC_Dither21 {true} \
   CONFIG.ADC_Dither22 {true} \
   CONFIG.ADC_Dither23 {true} \
   CONFIG.ADC_Dither30 {true} \
   CONFIG.ADC_Dither31 {true} \
   CONFIG.ADC_Dither32 {true} \
   CONFIG.ADC_Dither33 {true} \
   CONFIG.ADC_Mixer_Mode00 {2} \
   CONFIG.ADC_Mixer_Mode01 {2} \
   CONFIG.ADC_Mixer_Mode02 {2} \
   CONFIG.ADC_Mixer_Mode03 {2} \
   CONFIG.ADC_Mixer_Mode10 {2} \
   CONFIG.ADC_Mixer_Mode11 {2} \
   CONFIG.ADC_Mixer_Mode12 {2} \
   CONFIG.ADC_Mixer_Mode13 {2} \
   CONFIG.ADC_Mixer_Mode20 {2} \
   CONFIG.ADC_Mixer_Mode21 {2} \
   CONFIG.ADC_Mixer_Mode22 {2} \
   CONFIG.ADC_Mixer_Mode23 {2} \
   CONFIG.ADC_Mixer_Mode30 {2} \
   CONFIG.ADC_Mixer_Mode31 {2} \
   CONFIG.ADC_Mixer_Mode32 {2} \
   CONFIG.ADC_Mixer_Mode33 {2} \
   CONFIG.ADC_Mixer_Type00 {3} \
   CONFIG.ADC_Mixer_Type01 {3} \
   CONFIG.ADC_Mixer_Type02 {3} \
   CONFIG.ADC_Mixer_Type03 {3} \
   CONFIG.ADC_Mixer_Type10 {3} \
   CONFIG.ADC_Mixer_Type11 {3} \
   CONFIG.ADC_Mixer_Type12 {3} \
   CONFIG.ADC_Mixer_Type13 {3} \
   CONFIG.ADC_Mixer_Type20 {3} \
   CONFIG.ADC_Mixer_Type21 {3} \
   CONFIG.ADC_Mixer_Type22 {3} \
   CONFIG.ADC_Mixer_Type23 {3} \
   CONFIG.ADC_Mixer_Type30 {3} \
   CONFIG.ADC_Mixer_Type31 {3} \
   CONFIG.ADC_Mixer_Type32 {3} \
   CONFIG.ADC_Mixer_Type33 {3} \
   CONFIG.ADC_NCO_Freq00 {0.0} \
   CONFIG.ADC_NCO_Freq01 {0.0} \
   CONFIG.ADC_NCO_Freq02 {0.0} \
   CONFIG.ADC_NCO_Freq03 {0.0} \
   CONFIG.ADC_NCO_Freq10 {0.0} \
   CONFIG.ADC_NCO_Freq11 {0.0} \
   CONFIG.ADC_NCO_Freq12 {0.0} \
   CONFIG.ADC_NCO_Freq13 {0.0} \
   CONFIG.ADC_NCO_Freq20 {0.0} \
   CONFIG.ADC_NCO_Freq21 {0.0} \
   CONFIG.ADC_NCO_Freq22 {0.0} \
   CONFIG.ADC_NCO_Freq23 {0.0} \
   CONFIG.ADC_NCO_Freq30 {0.0} \
   CONFIG.ADC_NCO_Freq31 {0.0} \
   CONFIG.ADC_NCO_Freq32 {0.0} \
   CONFIG.ADC_NCO_Freq33 {0.0} \
   CONFIG.ADC_NCO_Phase00 {0} \
   CONFIG.ADC_NCO_Phase01 {0} \
   CONFIG.ADC_NCO_Phase02 {0} \
   CONFIG.ADC_NCO_Phase03 {0} \
   CONFIG.ADC_NCO_Phase10 {0} \
   CONFIG.ADC_NCO_Phase11 {0} \
   CONFIG.ADC_NCO_Phase12 {0} \
   CONFIG.ADC_NCO_Phase13 {0} \
   CONFIG.ADC_NCO_Phase20 {0} \
   CONFIG.ADC_NCO_Phase21 {0} \
   CONFIG.ADC_NCO_Phase22 {0} \
   CONFIG.ADC_NCO_Phase23 {0} \
   CONFIG.ADC_NCO_Phase30 {0} \
   CONFIG.ADC_NCO_Phase31 {0} \
   CONFIG.ADC_NCO_Phase32 {0} \
   CONFIG.ADC_NCO_Phase33 {0} \
   CONFIG.ADC_NCO_RTS {false} \
   CONFIG.ADC_Neg_Quadrature00 {false} \
   CONFIG.ADC_Neg_Quadrature01 {false} \
   CONFIG.ADC_Neg_Quadrature02 {false} \
   CONFIG.ADC_Neg_Quadrature03 {false} \
   CONFIG.ADC_Neg_Quadrature10 {false} \
   CONFIG.ADC_Neg_Quadrature11 {false} \
   CONFIG.ADC_Neg_Quadrature12 {false} \
   CONFIG.ADC_Neg_Quadrature13 {false} \
   CONFIG.ADC_Neg_Quadrature20 {false} \
   CONFIG.ADC_Neg_Quadrature21 {false} \
   CONFIG.ADC_Neg_Quadrature22 {false} \
   CONFIG.ADC_Neg_Quadrature23 {false} \
   CONFIG.ADC_Neg_Quadrature30 {false} \
   CONFIG.ADC_Neg_Quadrature31 {false} \
   CONFIG.ADC_Neg_Quadrature32 {false} \
   CONFIG.ADC_Neg_Quadrature33 {false} \
   CONFIG.ADC_Nyquist00 {0} \
   CONFIG.ADC_Nyquist01 {0} \
   CONFIG.ADC_Nyquist02 {0} \
   CONFIG.ADC_Nyquist03 {0} \
   CONFIG.ADC_Nyquist10 {0} \
   CONFIG.ADC_Nyquist11 {0} \
   CONFIG.ADC_Nyquist12 {0} \
   CONFIG.ADC_Nyquist13 {0} \
   CONFIG.ADC_Nyquist20 {0} \
   CONFIG.ADC_Nyquist21 {0} \
   CONFIG.ADC_Nyquist22 {0} \
   CONFIG.ADC_Nyquist23 {0} \
   CONFIG.ADC_Nyquist30 {0} \
   CONFIG.ADC_Nyquist31 {0} \
   CONFIG.ADC_Nyquist32 {0} \
   CONFIG.ADC_Nyquist33 {0} \
   CONFIG.ADC_OBS00 {false} \
   CONFIG.ADC_OBS01 {false} \
   CONFIG.ADC_OBS02 {false} \
   CONFIG.ADC_OBS03 {false} \
   CONFIG.ADC_OBS10 {false} \
   CONFIG.ADC_OBS11 {false} \
   CONFIG.ADC_OBS12 {false} \
   CONFIG.ADC_OBS13 {false} \
   CONFIG.ADC_OBS20 {false} \
   CONFIG.ADC_OBS21 {false} \
   CONFIG.ADC_OBS22 {false} \
   CONFIG.ADC_OBS23 {false} \
   CONFIG.ADC_OBS30 {false} \
   CONFIG.ADC_OBS31 {false} \
   CONFIG.ADC_OBS32 {false} \
   CONFIG.ADC_OBS33 {false} \
   CONFIG.ADC_RESERVED_1_00 {false} \
   CONFIG.ADC_RESERVED_1_01 {false} \
   CONFIG.ADC_RESERVED_1_02 {false} \
   CONFIG.ADC_RESERVED_1_03 {false} \
   CONFIG.ADC_RESERVED_1_10 {false} \
   CONFIG.ADC_RESERVED_1_11 {false} \
   CONFIG.ADC_RESERVED_1_12 {false} \
   CONFIG.ADC_RESERVED_1_13 {false} \
   CONFIG.ADC_RESERVED_1_20 {false} \
   CONFIG.ADC_RESERVED_1_21 {false} \
   CONFIG.ADC_RESERVED_1_22 {false} \
   CONFIG.ADC_RESERVED_1_23 {false} \
   CONFIG.ADC_RESERVED_1_30 {false} \
   CONFIG.ADC_RESERVED_1_31 {false} \
   CONFIG.ADC_RESERVED_1_32 {false} \
   CONFIG.ADC_RESERVED_1_33 {false} \
   CONFIG.ADC_RTS {false} \
   CONFIG.ADC_Slice00_Enable {false} \
   CONFIG.ADC_Slice01_Enable {false} \
   CONFIG.ADC_Slice02_Enable {false} \
   CONFIG.ADC_Slice03_Enable {false} \
   CONFIG.ADC_Slice10_Enable {false} \
   CONFIG.ADC_Slice11_Enable {false} \
   CONFIG.ADC_Slice12_Enable {false} \
   CONFIG.ADC_Slice13_Enable {false} \
   CONFIG.ADC_Slice20_Enable {false} \
   CONFIG.ADC_Slice21_Enable {false} \
   CONFIG.ADC_Slice22_Enable {false} \
   CONFIG.ADC_Slice23_Enable {false} \
   CONFIG.ADC_Slice30_Enable {false} \
   CONFIG.ADC_Slice31_Enable {false} \
   CONFIG.ADC_Slice32_Enable {false} \
   CONFIG.ADC_Slice33_Enable {false} \
   CONFIG.ADC_TDD_RTS00 {0} \
   CONFIG.ADC_TDD_RTS01 {0} \
   CONFIG.ADC_TDD_RTS02 {0} \
   CONFIG.ADC_TDD_RTS03 {0} \
   CONFIG.ADC_TDD_RTS10 {0} \
   CONFIG.ADC_TDD_RTS11 {0} \
   CONFIG.ADC_TDD_RTS12 {0} \
   CONFIG.ADC_TDD_RTS13 {0} \
   CONFIG.ADC_TDD_RTS20 {0} \
   CONFIG.ADC_TDD_RTS21 {0} \
   CONFIG.ADC_TDD_RTS22 {0} \
   CONFIG.ADC_TDD_RTS23 {0} \
   CONFIG.ADC_TDD_RTS30 {0} \
   CONFIG.ADC_TDD_RTS31 {0} \
   CONFIG.ADC_TDD_RTS32 {0} \
   CONFIG.ADC_TDD_RTS33 {0} \
   CONFIG.AMS_Factory_Var {0} \
   CONFIG.Analog_Detection {1} \
   CONFIG.Auto_Calibration_Freeze {false} \
   CONFIG.Axiclk_Freq {100.0} \
   CONFIG.Calibration_Freeze {false} \
   CONFIG.Calibration_Time {10} \
   CONFIG.Clock_Forwarding {false} \
   CONFIG.Converter_Setup {1} \
   CONFIG.DAC0_Band {0} \
   CONFIG.DAC0_Clock_Dist {0} \
   CONFIG.DAC0_Clock_Source {4} \
   CONFIG.DAC0_Clock_Source_MX {4} \
   CONFIG.DAC0_Enable {1} \
   CONFIG.DAC0_Fabric_Freq {400.000} \
   CONFIG.DAC0_Multi_Tile_Sync {false} \
   CONFIG.DAC0_Outclk_Freq {50.000} \
   CONFIG.DAC0_PLL_Enable {false} \
   CONFIG.DAC0_Refclk_Div {1} \
   CONFIG.DAC0_Refclk_Freq {6400.000} \
   CONFIG.DAC0_Sampling_Rate {6.4} \
   CONFIG.DAC0_VOP {20.0} \
   CONFIG.DAC1_Band {0} \
   CONFIG.DAC1_Clock_Dist {0} \
   CONFIG.DAC1_Clock_Source {5} \
   CONFIG.DAC1_Clock_Source_MX {5} \
   CONFIG.DAC1_Enable {0} \
   CONFIG.DAC1_Fabric_Freq {0.0} \
   CONFIG.DAC1_Multi_Tile_Sync {false} \
   CONFIG.DAC1_Outclk_Freq {50.000} \
   CONFIG.DAC1_PLL_Enable {false} \
   CONFIG.DAC1_Refclk_Div {1} \
   CONFIG.DAC1_Refclk_Freq {6400.000} \
   CONFIG.DAC1_Sampling_Rate {6.4} \
   CONFIG.DAC1_VOP {20.0} \
   CONFIG.DAC228_En {false} \
   CONFIG.DAC229_En {false} \
   CONFIG.DAC230_En {false} \
   CONFIG.DAC231_En {false} \
   CONFIG.DAC2_Band {0} \
   CONFIG.DAC2_Clock_Dist {0} \
   CONFIG.DAC2_Clock_Source {6} \
   CONFIG.DAC2_Clock_Source_MX {6} \
   CONFIG.DAC2_Enable {0} \
   CONFIG.DAC2_Fabric_Freq {0.0} \
   CONFIG.DAC2_Multi_Tile_Sync {false} \
   CONFIG.DAC2_Outclk_Freq {50.000} \
   CONFIG.DAC2_PLL_Enable {false} \
   CONFIG.DAC2_Refclk_Div {1} \
   CONFIG.DAC2_Refclk_Freq {6400.000} \
   CONFIG.DAC2_Sampling_Rate {6.4} \
   CONFIG.DAC2_VOP {20.0} \
   CONFIG.DAC3_Band {0} \
   CONFIG.DAC3_Clock_Dist {0} \
   CONFIG.DAC3_Clock_Source {7} \
   CONFIG.DAC3_Clock_Source_MX {7} \
   CONFIG.DAC3_Enable {0} \
   CONFIG.DAC3_Fabric_Freq {0.0} \
   CONFIG.DAC3_Multi_Tile_Sync {false} \
   CONFIG.DAC3_Outclk_Freq {50.000} \
   CONFIG.DAC3_PLL_Enable {false} \
   CONFIG.DAC3_Refclk_Div {1} \
   CONFIG.DAC3_Refclk_Freq {6400.000} \
   CONFIG.DAC3_Sampling_Rate {6.4} \
   CONFIG.DAC3_VOP {20.0} \
   CONFIG.DAC_Coarse_Mixer_Freq00 {0} \
   CONFIG.DAC_Coarse_Mixer_Freq01 {0} \
   CONFIG.DAC_Coarse_Mixer_Freq02 {0} \
   CONFIG.DAC_Coarse_Mixer_Freq03 {0} \
   CONFIG.DAC_Coarse_Mixer_Freq10 {0} \
   CONFIG.DAC_Coarse_Mixer_Freq11 {0} \
   CONFIG.DAC_Coarse_Mixer_Freq12 {0} \
   CONFIG.DAC_Coarse_Mixer_Freq13 {0} \
   CONFIG.DAC_Coarse_Mixer_Freq20 {0} \
   CONFIG.DAC_Coarse_Mixer_Freq21 {0} \
   CONFIG.DAC_Coarse_Mixer_Freq22 {0} \
   CONFIG.DAC_Coarse_Mixer_Freq23 {0} \
   CONFIG.DAC_Coarse_Mixer_Freq30 {0} \
   CONFIG.DAC_Coarse_Mixer_Freq31 {0} \
   CONFIG.DAC_Coarse_Mixer_Freq32 {0} \
   CONFIG.DAC_Coarse_Mixer_Freq33 {0} \
   CONFIG.DAC_Data_Type00 {0} \
   CONFIG.DAC_Data_Type01 {0} \
   CONFIG.DAC_Data_Type02 {0} \
   CONFIG.DAC_Data_Type03 {0} \
   CONFIG.DAC_Data_Type10 {0} \
   CONFIG.DAC_Data_Type11 {0} \
   CONFIG.DAC_Data_Type12 {0} \
   CONFIG.DAC_Data_Type13 {0} \
   CONFIG.DAC_Data_Type20 {0} \
   CONFIG.DAC_Data_Type21 {0} \
   CONFIG.DAC_Data_Type22 {0} \
   CONFIG.DAC_Data_Type23 {0} \
   CONFIG.DAC_Data_Type30 {0} \
   CONFIG.DAC_Data_Type31 {0} \
   CONFIG.DAC_Data_Type32 {0} \
   CONFIG.DAC_Data_Type33 {0} \
   CONFIG.DAC_Data_Width00 {16} \
   CONFIG.DAC_Data_Width01 {16} \
   CONFIG.DAC_Data_Width02 {16} \
   CONFIG.DAC_Data_Width03 {16} \
   CONFIG.DAC_Data_Width10 {16} \
   CONFIG.DAC_Data_Width11 {16} \
   CONFIG.DAC_Data_Width12 {16} \
   CONFIG.DAC_Data_Width13 {16} \
   CONFIG.DAC_Data_Width20 {16} \
   CONFIG.DAC_Data_Width21 {16} \
   CONFIG.DAC_Data_Width22 {16} \
   CONFIG.DAC_Data_Width23 {16} \
   CONFIG.DAC_Data_Width30 {16} \
   CONFIG.DAC_Data_Width31 {16} \
   CONFIG.DAC_Data_Width32 {16} \
   CONFIG.DAC_Data_Width33 {16} \
   CONFIG.DAC_Debug {false} \
   CONFIG.DAC_Decoder_Mode00 {0} \
   CONFIG.DAC_Decoder_Mode01 {0} \
   CONFIG.DAC_Decoder_Mode02 {0} \
   CONFIG.DAC_Decoder_Mode03 {0} \
   CONFIG.DAC_Decoder_Mode10 {0} \
   CONFIG.DAC_Decoder_Mode11 {0} \
   CONFIG.DAC_Decoder_Mode12 {0} \
   CONFIG.DAC_Decoder_Mode13 {0} \
   CONFIG.DAC_Decoder_Mode20 {0} \
   CONFIG.DAC_Decoder_Mode21 {0} \
   CONFIG.DAC_Decoder_Mode22 {0} \
   CONFIG.DAC_Decoder_Mode23 {0} \
   CONFIG.DAC_Decoder_Mode30 {0} \
   CONFIG.DAC_Decoder_Mode31 {0} \
   CONFIG.DAC_Decoder_Mode32 {0} \
   CONFIG.DAC_Decoder_Mode33 {0} \
   CONFIG.DAC_Interpolation_Mode00 {1} \
   CONFIG.DAC_Interpolation_Mode01 {0} \
   CONFIG.DAC_Interpolation_Mode02 {0} \
   CONFIG.DAC_Interpolation_Mode03 {0} \
   CONFIG.DAC_Interpolation_Mode10 {0} \
   CONFIG.DAC_Interpolation_Mode11 {0} \
   CONFIG.DAC_Interpolation_Mode12 {0} \
   CONFIG.DAC_Interpolation_Mode13 {0} \
   CONFIG.DAC_Interpolation_Mode20 {0} \
   CONFIG.DAC_Interpolation_Mode21 {0} \
   CONFIG.DAC_Interpolation_Mode22 {0} \
   CONFIG.DAC_Interpolation_Mode23 {0} \
   CONFIG.DAC_Interpolation_Mode30 {0} \
   CONFIG.DAC_Interpolation_Mode31 {0} \
   CONFIG.DAC_Interpolation_Mode32 {0} \
   CONFIG.DAC_Interpolation_Mode33 {0} \
   CONFIG.DAC_Invsinc_Ctrl00 {false} \
   CONFIG.DAC_Invsinc_Ctrl01 {false} \
   CONFIG.DAC_Invsinc_Ctrl02 {false} \
   CONFIG.DAC_Invsinc_Ctrl03 {false} \
   CONFIG.DAC_Invsinc_Ctrl10 {false} \
   CONFIG.DAC_Invsinc_Ctrl11 {false} \
   CONFIG.DAC_Invsinc_Ctrl12 {false} \
   CONFIG.DAC_Invsinc_Ctrl13 {false} \
   CONFIG.DAC_Invsinc_Ctrl20 {false} \
   CONFIG.DAC_Invsinc_Ctrl21 {false} \
   CONFIG.DAC_Invsinc_Ctrl22 {false} \
   CONFIG.DAC_Invsinc_Ctrl23 {false} \
   CONFIG.DAC_Invsinc_Ctrl30 {false} \
   CONFIG.DAC_Invsinc_Ctrl31 {false} \
   CONFIG.DAC_Invsinc_Ctrl32 {false} \
   CONFIG.DAC_Invsinc_Ctrl33 {false} \
   CONFIG.DAC_Mixer_Mode00 {2} \
   CONFIG.DAC_Mixer_Mode01 {2} \
   CONFIG.DAC_Mixer_Mode02 {2} \
   CONFIG.DAC_Mixer_Mode03 {2} \
   CONFIG.DAC_Mixer_Mode10 {2} \
   CONFIG.DAC_Mixer_Mode11 {2} \
   CONFIG.DAC_Mixer_Mode12 {2} \
   CONFIG.DAC_Mixer_Mode13 {2} \
   CONFIG.DAC_Mixer_Mode20 {2} \
   CONFIG.DAC_Mixer_Mode21 {2} \
   CONFIG.DAC_Mixer_Mode22 {2} \
   CONFIG.DAC_Mixer_Mode23 {2} \
   CONFIG.DAC_Mixer_Mode30 {2} \
   CONFIG.DAC_Mixer_Mode31 {2} \
   CONFIG.DAC_Mixer_Mode32 {2} \
   CONFIG.DAC_Mixer_Mode33 {2} \
   CONFIG.DAC_Mixer_Type00 {0} \
   CONFIG.DAC_Mixer_Type01 {3} \
   CONFIG.DAC_Mixer_Type02 {3} \
   CONFIG.DAC_Mixer_Type03 {3} \
   CONFIG.DAC_Mixer_Type10 {3} \
   CONFIG.DAC_Mixer_Type11 {3} \
   CONFIG.DAC_Mixer_Type12 {3} \
   CONFIG.DAC_Mixer_Type13 {3} \
   CONFIG.DAC_Mixer_Type20 {3} \
   CONFIG.DAC_Mixer_Type21 {3} \
   CONFIG.DAC_Mixer_Type22 {3} \
   CONFIG.DAC_Mixer_Type23 {3} \
   CONFIG.DAC_Mixer_Type30 {3} \
   CONFIG.DAC_Mixer_Type31 {3} \
   CONFIG.DAC_Mixer_Type32 {3} \
   CONFIG.DAC_Mixer_Type33 {3} \
   CONFIG.DAC_Mode00 {0} \
   CONFIG.DAC_Mode01 {0} \
   CONFIG.DAC_Mode02 {0} \
   CONFIG.DAC_Mode03 {0} \
   CONFIG.DAC_Mode10 {0} \
   CONFIG.DAC_Mode11 {0} \
   CONFIG.DAC_Mode12 {0} \
   CONFIG.DAC_Mode13 {0} \
   CONFIG.DAC_Mode20 {0} \
   CONFIG.DAC_Mode21 {0} \
   CONFIG.DAC_Mode22 {0} \
   CONFIG.DAC_Mode23 {0} \
   CONFIG.DAC_Mode30 {0} \
   CONFIG.DAC_Mode31 {0} \
   CONFIG.DAC_Mode32 {0} \
   CONFIG.DAC_Mode33 {0} \
   CONFIG.DAC_NCO_Freq00 {0.0} \
   CONFIG.DAC_NCO_Freq01 {0.0} \
   CONFIG.DAC_NCO_Freq02 {0.0} \
   CONFIG.DAC_NCO_Freq03 {0.0} \
   CONFIG.DAC_NCO_Freq10 {0.0} \
   CONFIG.DAC_NCO_Freq11 {0.0} \
   CONFIG.DAC_NCO_Freq12 {0.0} \
   CONFIG.DAC_NCO_Freq13 {0.0} \
   CONFIG.DAC_NCO_Freq20 {0.0} \
   CONFIG.DAC_NCO_Freq21 {0.0} \
   CONFIG.DAC_NCO_Freq22 {0.0} \
   CONFIG.DAC_NCO_Freq23 {0.0} \
   CONFIG.DAC_NCO_Freq30 {0.0} \
   CONFIG.DAC_NCO_Freq31 {0.0} \
   CONFIG.DAC_NCO_Freq32 {0.0} \
   CONFIG.DAC_NCO_Freq33 {0.0} \
   CONFIG.DAC_NCO_Phase00 {0} \
   CONFIG.DAC_NCO_Phase01 {0} \
   CONFIG.DAC_NCO_Phase02 {0} \
   CONFIG.DAC_NCO_Phase03 {0} \
   CONFIG.DAC_NCO_Phase10 {0} \
   CONFIG.DAC_NCO_Phase11 {0} \
   CONFIG.DAC_NCO_Phase12 {0} \
   CONFIG.DAC_NCO_Phase13 {0} \
   CONFIG.DAC_NCO_Phase20 {0} \
   CONFIG.DAC_NCO_Phase21 {0} \
   CONFIG.DAC_NCO_Phase22 {0} \
   CONFIG.DAC_NCO_Phase23 {0} \
   CONFIG.DAC_NCO_Phase30 {0} \
   CONFIG.DAC_NCO_Phase31 {0} \
   CONFIG.DAC_NCO_Phase32 {0} \
   CONFIG.DAC_NCO_Phase33 {0} \
   CONFIG.DAC_NCO_RTS {false} \
   CONFIG.DAC_Neg_Quadrature00 {false} \
   CONFIG.DAC_Neg_Quadrature01 {false} \
   CONFIG.DAC_Neg_Quadrature02 {false} \
   CONFIG.DAC_Neg_Quadrature03 {false} \
   CONFIG.DAC_Neg_Quadrature10 {false} \
   CONFIG.DAC_Neg_Quadrature11 {false} \
   CONFIG.DAC_Neg_Quadrature12 {false} \
   CONFIG.DAC_Neg_Quadrature13 {false} \
   CONFIG.DAC_Neg_Quadrature20 {false} \
   CONFIG.DAC_Neg_Quadrature21 {false} \
   CONFIG.DAC_Neg_Quadrature22 {false} \
   CONFIG.DAC_Neg_Quadrature23 {false} \
   CONFIG.DAC_Neg_Quadrature30 {false} \
   CONFIG.DAC_Neg_Quadrature31 {false} \
   CONFIG.DAC_Neg_Quadrature32 {false} \
   CONFIG.DAC_Neg_Quadrature33 {false} \
   CONFIG.DAC_Nyquist00 {0} \
   CONFIG.DAC_Nyquist01 {0} \
   CONFIG.DAC_Nyquist02 {0} \
   CONFIG.DAC_Nyquist03 {0} \
   CONFIG.DAC_Nyquist10 {0} \
   CONFIG.DAC_Nyquist11 {0} \
   CONFIG.DAC_Nyquist12 {0} \
   CONFIG.DAC_Nyquist13 {0} \
   CONFIG.DAC_Nyquist20 {0} \
   CONFIG.DAC_Nyquist21 {0} \
   CONFIG.DAC_Nyquist22 {0} \
   CONFIG.DAC_Nyquist23 {0} \
   CONFIG.DAC_Nyquist30 {0} \
   CONFIG.DAC_Nyquist31 {0} \
   CONFIG.DAC_Nyquist32 {0} \
   CONFIG.DAC_Nyquist33 {0} \
   CONFIG.DAC_Output_Current {0} \
   CONFIG.DAC_RESERVED_1_00 {false} \
   CONFIG.DAC_RESERVED_1_01 {false} \
   CONFIG.DAC_RESERVED_1_02 {false} \
   CONFIG.DAC_RESERVED_1_03 {false} \
   CONFIG.DAC_RESERVED_1_10 {false} \
   CONFIG.DAC_RESERVED_1_11 {false} \
   CONFIG.DAC_RESERVED_1_12 {false} \
   CONFIG.DAC_RESERVED_1_13 {false} \
   CONFIG.DAC_RESERVED_1_20 {false} \
   CONFIG.DAC_RESERVED_1_21 {false} \
   CONFIG.DAC_RESERVED_1_22 {false} \
   CONFIG.DAC_RESERVED_1_23 {false} \
   CONFIG.DAC_RESERVED_1_30 {false} \
   CONFIG.DAC_RESERVED_1_31 {false} \
   CONFIG.DAC_RESERVED_1_32 {false} \
   CONFIG.DAC_RESERVED_1_33 {false} \
   CONFIG.DAC_RTS {false} \
   CONFIG.DAC_Slice00_Enable {true} \
   CONFIG.DAC_Slice01_Enable {false} \
   CONFIG.DAC_Slice02_Enable {false} \
   CONFIG.DAC_Slice03_Enable {false} \
   CONFIG.DAC_Slice10_Enable {false} \
   CONFIG.DAC_Slice11_Enable {false} \
   CONFIG.DAC_Slice12_Enable {false} \
   CONFIG.DAC_Slice13_Enable {false} \
   CONFIG.DAC_Slice20_Enable {false} \
   CONFIG.DAC_Slice21_Enable {false} \
   CONFIG.DAC_Slice22_Enable {false} \
   CONFIG.DAC_Slice23_Enable {false} \
   CONFIG.DAC_Slice30_Enable {false} \
   CONFIG.DAC_Slice31_Enable {false} \
   CONFIG.DAC_Slice32_Enable {false} \
   CONFIG.DAC_Slice33_Enable {false} \
   CONFIG.DAC_TDD_RTS00 {0} \
   CONFIG.DAC_TDD_RTS01 {0} \
   CONFIG.DAC_TDD_RTS02 {0} \
   CONFIG.DAC_TDD_RTS03 {0} \
   CONFIG.DAC_TDD_RTS10 {0} \
   CONFIG.DAC_TDD_RTS11 {0} \
   CONFIG.DAC_TDD_RTS12 {0} \
   CONFIG.DAC_TDD_RTS13 {0} \
   CONFIG.DAC_TDD_RTS20 {0} \
   CONFIG.DAC_TDD_RTS21 {0} \
   CONFIG.DAC_TDD_RTS22 {0} \
   CONFIG.DAC_TDD_RTS23 {0} \
   CONFIG.DAC_TDD_RTS30 {0} \
   CONFIG.DAC_TDD_RTS31 {0} \
   CONFIG.DAC_TDD_RTS32 {0} \
   CONFIG.DAC_TDD_RTS33 {0} \
   CONFIG.DAC_VOP_Mode {1} \
   CONFIG.DAC_VOP_RTS {false} \
   CONFIG.PL_Clock_Freq {100.0} \
   CONFIG.PRESET {None} \
   CONFIG.RESERVED_3 {110000} \
   CONFIG.RF_Analyzer {0} \
   CONFIG.Sysref_Source {1} \
   CONFIG.VNC_Include_Fs2_Change {true} \
   CONFIG.VNC_Include_OIS_Change {true} \
   CONFIG.VNC_Testing {false} \
   CONFIG.disable_bg_cal_en {1} \
   CONFIG.mADC_Band {0} \
   CONFIG.mADC_Bypass_BG_Cal00 {false} \
   CONFIG.mADC_Bypass_BG_Cal01 {false} \
   CONFIG.mADC_Bypass_BG_Cal02 {false} \
   CONFIG.mADC_Bypass_BG_Cal03 {false} \
   CONFIG.mADC_CalOpt_Mode00 {1} \
   CONFIG.mADC_CalOpt_Mode01 {1} \
   CONFIG.mADC_CalOpt_Mode02 {1} \
   CONFIG.mADC_CalOpt_Mode03 {1} \
   CONFIG.mADC_Coarse_Mixer_Freq00 {0} \
   CONFIG.mADC_Coarse_Mixer_Freq01 {0} \
   CONFIG.mADC_Coarse_Mixer_Freq02 {0} \
   CONFIG.mADC_Coarse_Mixer_Freq03 {0} \
   CONFIG.mADC_Data_Type00 {0} \
   CONFIG.mADC_Data_Type01 {0} \
   CONFIG.mADC_Data_Type02 {0} \
   CONFIG.mADC_Data_Type03 {0} \
   CONFIG.mADC_Data_Width00 {8} \
   CONFIG.mADC_Data_Width01 {8} \
   CONFIG.mADC_Data_Width02 {8} \
   CONFIG.mADC_Data_Width03 {8} \
   CONFIG.mADC_Decimation_Mode00 {0} \
   CONFIG.mADC_Decimation_Mode01 {0} \
   CONFIG.mADC_Decimation_Mode02 {0} \
   CONFIG.mADC_Decimation_Mode03 {0} \
   CONFIG.mADC_Dither00 {true} \
   CONFIG.mADC_Dither01 {true} \
   CONFIG.mADC_Dither02 {true} \
   CONFIG.mADC_Dither03 {true} \
   CONFIG.mADC_Enable {0} \
   CONFIG.mADC_Fabric_Freq {0.0} \
   CONFIG.mADC_Link_Coupling {0} \
   CONFIG.mADC_Mixer_Mode00 {2} \
   CONFIG.mADC_Mixer_Mode01 {2} \
   CONFIG.mADC_Mixer_Mode02 {2} \
   CONFIG.mADC_Mixer_Mode03 {2} \
   CONFIG.mADC_Mixer_Type00 {3} \
   CONFIG.mADC_Mixer_Type01 {3} \
   CONFIG.mADC_Mixer_Type02 {3} \
   CONFIG.mADC_Mixer_Type03 {3} \
   CONFIG.mADC_Multi_Tile_Sync {false} \
   CONFIG.mADC_NCO_Freq00 {0.0} \
   CONFIG.mADC_NCO_Freq01 {0.0} \
   CONFIG.mADC_NCO_Freq02 {0.0} \
   CONFIG.mADC_NCO_Freq03 {0.0} \
   CONFIG.mADC_NCO_Phase00 {0} \
   CONFIG.mADC_NCO_Phase01 {0} \
   CONFIG.mADC_NCO_Phase02 {0} \
   CONFIG.mADC_NCO_Phase03 {0} \
   CONFIG.mADC_Neg_Quadrature00 {false} \
   CONFIG.mADC_Neg_Quadrature01 {false} \
   CONFIG.mADC_Neg_Quadrature02 {false} \
   CONFIG.mADC_Neg_Quadrature03 {false} \
   CONFIG.mADC_Nyquist00 {0} \
   CONFIG.mADC_Nyquist01 {0} \
   CONFIG.mADC_Nyquist02 {0} \
   CONFIG.mADC_Nyquist03 {0} \
   CONFIG.mADC_OBS00 {false} \
   CONFIG.mADC_OBS01 {false} \
   CONFIG.mADC_OBS02 {false} \
   CONFIG.mADC_OBS03 {false} \
   CONFIG.mADC_Outclk_Freq {15.625} \
   CONFIG.mADC_PLL_Enable {false} \
   CONFIG.mADC_RESERVED_1_00 {false} \
   CONFIG.mADC_RESERVED_1_01 {false} \
   CONFIG.mADC_RESERVED_1_02 {false} \
   CONFIG.mADC_RESERVED_1_03 {false} \
   CONFIG.mADC_Refclk_Div {1} \
   CONFIG.mADC_Refclk_Freq {2000.000} \
   CONFIG.mADC_Sampling_Rate {2.0} \
   CONFIG.mADC_Slice00_Enable {false} \
   CONFIG.mADC_Slice01_Enable {false} \
   CONFIG.mADC_Slice02_Enable {false} \
   CONFIG.mADC_Slice03_Enable {false} \
   CONFIG.mADC_TDD_RTS00 {0} \
   CONFIG.mADC_TDD_RTS01 {0} \
   CONFIG.mADC_TDD_RTS02 {0} \
   CONFIG.mADC_TDD_RTS03 {0} \
   CONFIG.mDAC_Band {0} \
   CONFIG.mDAC_Coarse_Mixer_Freq00 {0} \
   CONFIG.mDAC_Coarse_Mixer_Freq01 {0} \
   CONFIG.mDAC_Coarse_Mixer_Freq02 {0} \
   CONFIG.mDAC_Coarse_Mixer_Freq03 {0} \
   CONFIG.mDAC_Data_Type00 {0} \
   CONFIG.mDAC_Data_Type01 {0} \
   CONFIG.mDAC_Data_Type02 {0} \
   CONFIG.mDAC_Data_Type03 {0} \
   CONFIG.mDAC_Data_Width00 {16} \
   CONFIG.mDAC_Data_Width01 {16} \
   CONFIG.mDAC_Data_Width02 {16} \
   CONFIG.mDAC_Data_Width03 {16} \
   CONFIG.mDAC_Decoder_Mode00 {0} \
   CONFIG.mDAC_Decoder_Mode01 {0} \
   CONFIG.mDAC_Decoder_Mode02 {0} \
   CONFIG.mDAC_Decoder_Mode03 {0} \
   CONFIG.mDAC_Enable {0} \
   CONFIG.mDAC_Fabric_Freq {0.0} \
   CONFIG.mDAC_Interpolation_Mode00 {0} \
   CONFIG.mDAC_Interpolation_Mode01 {0} \
   CONFIG.mDAC_Interpolation_Mode02 {0} \
   CONFIG.mDAC_Interpolation_Mode03 {0} \
   CONFIG.mDAC_Invsinc_Ctrl00 {false} \
   CONFIG.mDAC_Invsinc_Ctrl01 {false} \
   CONFIG.mDAC_Invsinc_Ctrl02 {false} \
   CONFIG.mDAC_Invsinc_Ctrl03 {false} \
   CONFIG.mDAC_Mixer_Mode00 {2} \
   CONFIG.mDAC_Mixer_Mode01 {2} \
   CONFIG.mDAC_Mixer_Mode02 {2} \
   CONFIG.mDAC_Mixer_Mode03 {2} \
   CONFIG.mDAC_Mixer_Type00 {3} \
   CONFIG.mDAC_Mixer_Type01 {3} \
   CONFIG.mDAC_Mixer_Type02 {3} \
   CONFIG.mDAC_Mixer_Type03 {3} \
   CONFIG.mDAC_Mode00 {0} \
   CONFIG.mDAC_Mode01 {0} \
   CONFIG.mDAC_Mode02 {0} \
   CONFIG.mDAC_Mode03 {0} \
   CONFIG.mDAC_Multi_Tile_Sync {false} \
   CONFIG.mDAC_NCO_Freq00 {0.0} \
   CONFIG.mDAC_NCO_Freq01 {0.0} \
   CONFIG.mDAC_NCO_Freq02 {0.0} \
   CONFIG.mDAC_NCO_Freq03 {0.0} \
   CONFIG.mDAC_NCO_Phase00 {0} \
   CONFIG.mDAC_NCO_Phase01 {0} \
   CONFIG.mDAC_NCO_Phase02 {0} \
   CONFIG.mDAC_NCO_Phase03 {0} \
   CONFIG.mDAC_Neg_Quadrature00 {false} \
   CONFIG.mDAC_Neg_Quadrature01 {false} \
   CONFIG.mDAC_Neg_Quadrature02 {false} \
   CONFIG.mDAC_Neg_Quadrature03 {false} \
   CONFIG.mDAC_Nyquist00 {0} \
   CONFIG.mDAC_Nyquist01 {0} \
   CONFIG.mDAC_Nyquist02 {0} \
   CONFIG.mDAC_Nyquist03 {0} \
   CONFIG.mDAC_Outclk_Freq {50.000} \
   CONFIG.mDAC_PLL_Enable {false} \
   CONFIG.mDAC_RESERVED_1_00 {false} \
   CONFIG.mDAC_RESERVED_1_01 {false} \
   CONFIG.mDAC_RESERVED_1_02 {false} \
   CONFIG.mDAC_RESERVED_1_03 {false} \
   CONFIG.mDAC_Refclk_Div {1} \
   CONFIG.mDAC_Refclk_Freq {6400.000} \
   CONFIG.mDAC_Sampling_Rate {6.4} \
   CONFIG.mDAC_Slice00_Enable {false} \
   CONFIG.mDAC_Slice01_Enable {false} \
   CONFIG.mDAC_Slice02_Enable {false} \
   CONFIG.mDAC_Slice03_Enable {false} \
   CONFIG.mDAC_TDD_RTS00 {0} \
   CONFIG.mDAC_TDD_RTS01 {0} \
   CONFIG.mDAC_TDD_RTS02 {0} \
   CONFIG.mDAC_TDD_RTS03 {0} \
   CONFIG.mDAC_VOP {20.0} \
   CONFIG.production_simulation {0} \
   CONFIG.tb_adc_fft {true} \
   CONFIG.tb_dac_fft {true} \
   CONFIG.use_bram {1} \
 ] $usp_rf_data_converter_0

  # Create interface connections
  connect_bd_intf_net -intf_net dac0_clk_1 [get_bd_intf_ports dac0_clk] [get_bd_intf_pins usp_rf_data_converter_0/dac0_clk]
  connect_bd_intf_net -intf_net dac_source_i_m00 [get_bd_intf_pins dac_source_i/m00] [get_bd_intf_pins usp_rf_data_converter_0/s00_axis]
  connect_bd_intf_net -intf_net s_axi_1 [get_bd_intf_ports s_axi] [get_bd_intf_pins smartconnect_0/S00_AXI]
  connect_bd_intf_net -intf_net smartconnect_0_M00_AXI [get_bd_intf_pins smartconnect_0/M00_AXI] [get_bd_intf_pins usp_rf_data_converter_0/s_axi]
  connect_bd_intf_net -intf_net smartconnect_0_M01_AXI [get_bd_intf_pins dac_source_i/s_axi] [get_bd_intf_pins smartconnect_0/M01_AXI]
  connect_bd_intf_net -intf_net sysref_in_1 [get_bd_intf_ports sysref_in] [get_bd_intf_pins usp_rf_data_converter_0/sysref_in]
  connect_bd_intf_net -intf_net usp_rf_data_converter_0_vout00 [get_bd_intf_ports vout00] [get_bd_intf_pins usp_rf_data_converter_0/vout00]

  # Create port connections
  connect_bd_net -net dac0_axis_aclk_1 [get_bd_ports dac0_axis_aclk] [get_bd_pins dac_source_i/m0_axis_clock] [get_bd_pins dac_source_i/m0_div2_axis_clock] [get_bd_pins usp_rf_data_converter_0/s0_axis_aclk]
  connect_bd_net -net s0_axis_aresetn_0_1 [get_bd_ports dac0_axis_aresetn] [get_bd_pins usp_rf_data_converter_0/s0_axis_aresetn]
  connect_bd_net -net s_axi_aclk_1 [get_bd_ports s_axi_aclk] [get_bd_pins dac_source_i/s_axi_aclk] [get_bd_pins smartconnect_0/aclk] [get_bd_pins usp_rf_data_converter_0/s_axi_aclk]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_ports s_axi_aresetn] [get_bd_pins dac_source_i/s_axi_aresetn] [get_bd_pins smartconnect_0/aresetn] [get_bd_pins usp_rf_data_converter_0/s_axi_aresetn]
  connect_bd_net -net usp_rf_data_converter_0_clk_dac0 [get_bd_ports clk_dac0] [get_bd_pins usp_rf_data_converter_0/clk_dac0]
  connect_bd_net -net usp_rf_data_converter_0_irq [get_bd_ports irq] [get_bd_pins usp_rf_data_converter_0/irq]

  # Create address segments
  assign_bd_address -offset 0x44A00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces s_axi] [get_bd_addr_segs dac_source_i/s_axi/reg0] -force
  assign_bd_address -offset 0x44A40000 -range 0x00040000 -target_address_space [get_bd_addr_spaces s_axi] [get_bd_addr_segs usp_rf_data_converter_0/s_axi/Reg] -force


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


