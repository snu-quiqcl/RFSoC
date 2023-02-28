# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "AXIS_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_STROBE_LEN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_STROBE_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CHANNEL_LENGTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DEST_VAL" -parent ${Page_0}
  ipgui::add_param $IPINST -name "INDEX" -parent ${Page_0}


}

proc update_PARAM_VALUE.AXIS_DATA_WIDTH { PARAM_VALUE.AXIS_DATA_WIDTH } {
	# Procedure called to update AXIS_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXIS_DATA_WIDTH { PARAM_VALUE.AXIS_DATA_WIDTH } {
	# Procedure called to validate AXIS_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.AXI_ADDR_WIDTH { PARAM_VALUE.AXI_ADDR_WIDTH } {
	# Procedure called to update AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_ADDR_WIDTH { PARAM_VALUE.AXI_ADDR_WIDTH } {
	# Procedure called to validate AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.AXI_DATA_WIDTH { PARAM_VALUE.AXI_DATA_WIDTH } {
	# Procedure called to update AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_DATA_WIDTH { PARAM_VALUE.AXI_DATA_WIDTH } {
	# Procedure called to validate AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.AXI_STROBE_LEN { PARAM_VALUE.AXI_STROBE_LEN } {
	# Procedure called to update AXI_STROBE_LEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_STROBE_LEN { PARAM_VALUE.AXI_STROBE_LEN } {
	# Procedure called to validate AXI_STROBE_LEN
	return true
}

proc update_PARAM_VALUE.AXI_STROBE_WIDTH { PARAM_VALUE.AXI_STROBE_WIDTH } {
	# Procedure called to update AXI_STROBE_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_STROBE_WIDTH { PARAM_VALUE.AXI_STROBE_WIDTH } {
	# Procedure called to validate AXI_STROBE_WIDTH
	return true
}

proc update_PARAM_VALUE.CHANNEL_LENGTH { PARAM_VALUE.CHANNEL_LENGTH } {
	# Procedure called to update CHANNEL_LENGTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CHANNEL_LENGTH { PARAM_VALUE.CHANNEL_LENGTH } {
	# Procedure called to validate CHANNEL_LENGTH
	return true
}

proc update_PARAM_VALUE.DEST_VAL { PARAM_VALUE.DEST_VAL } {
	# Procedure called to update DEST_VAL when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DEST_VAL { PARAM_VALUE.DEST_VAL } {
	# Procedure called to validate DEST_VAL
	return true
}

proc update_PARAM_VALUE.INDEX { PARAM_VALUE.INDEX } {
	# Procedure called to update INDEX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INDEX { PARAM_VALUE.INDEX } {
	# Procedure called to validate INDEX
	return true
}


proc update_MODELPARAM_VALUE.AXI_ADDR_WIDTH { MODELPARAM_VALUE.AXI_ADDR_WIDTH PARAM_VALUE.AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI_DATA_WIDTH { MODELPARAM_VALUE.AXI_DATA_WIDTH PARAM_VALUE.AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI_STROBE_WIDTH { MODELPARAM_VALUE.AXI_STROBE_WIDTH PARAM_VALUE.AXI_STROBE_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_STROBE_WIDTH}] ${MODELPARAM_VALUE.AXI_STROBE_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI_STROBE_LEN { MODELPARAM_VALUE.AXI_STROBE_LEN PARAM_VALUE.AXI_STROBE_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_STROBE_LEN}] ${MODELPARAM_VALUE.AXI_STROBE_LEN}
}

proc update_MODELPARAM_VALUE.INDEX { MODELPARAM_VALUE.INDEX PARAM_VALUE.INDEX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INDEX}] ${MODELPARAM_VALUE.INDEX}
}

proc update_MODELPARAM_VALUE.DEST_VAL { MODELPARAM_VALUE.DEST_VAL PARAM_VALUE.DEST_VAL } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DEST_VAL}] ${MODELPARAM_VALUE.DEST_VAL}
}

proc update_MODELPARAM_VALUE.CHANNEL_LENGTH { MODELPARAM_VALUE.CHANNEL_LENGTH PARAM_VALUE.CHANNEL_LENGTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CHANNEL_LENGTH}] ${MODELPARAM_VALUE.CHANNEL_LENGTH}
}

proc update_MODELPARAM_VALUE.AXIS_DATA_WIDTH { MODELPARAM_VALUE.AXIS_DATA_WIDTH PARAM_VALUE.AXIS_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXIS_DATA_WIDTH}] ${MODELPARAM_VALUE.AXIS_DATA_WIDTH}
}

