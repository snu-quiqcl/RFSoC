################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name RF3_CLKO_A_C_N -period 3.333 [get_ports RF3_CLKO_A_C_N]
create_clock -name RF3_CLKO_A_C_P -period 3.333 [get_ports RF3_CLKO_A_C_P]

################################################################################