--------------------------------------------------------------------------------
-- (c) Copyright 2010 - 2013 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--------------------------------------------------------------------------------
-- Description:
-- This is an example testbench for the DDS Compiler IP core.
-- The testbench has been generated by Vivado to accompany the IP core
-- instance you have generated.
--
-- This testbench is for demonstration purposes only.  See note below for
-- instructions on how to use it with your core.
--
-- See the DDS Compiler product guide for further information
-- about this core.
--
--------------------------------------------------------------------------------
-- Using this testbench
--
-- This testbench instantiates your generated DDS Compiler core
-- instance named "dds_compiler_3".
--
-- Use Vivado's Run Simulation flow to run this testbench.  See the Vivado
-- documentation for details.
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity tb_dds_compiler_3 is
end tb_dds_compiler_3;

architecture tb of tb_dds_compiler_3 is

  -----------------------------------------------------------------------
  -- Timing constants
  -----------------------------------------------------------------------
  constant CLOCK_PERIOD : time := 100 ns;
  constant T_HOLD       : time := 10 ns;
  constant T_STROBE     : time := CLOCK_PERIOD - (1 ns);

  -----------------------------------------------------------------------
  -- DUT input signals
  -----------------------------------------------------------------------

  -- General inputs
  signal aclk                            : std_logic := '0';  -- the master clock

  -- Phase slave channel signals
  signal s_axis_phase_tvalid             : std_logic := '0';  -- payload is valid
  signal s_axis_phase_tdata              : std_logic_vector(15 downto 0) := (others => '0');  -- data payload

  -- Data master channel signals
  signal m_axis_data_tvalid              : std_logic := '0';  -- payload is valid
  signal m_axis_data_tdata               : std_logic_vector(15 downto 0) := (others => '0');  -- data payload

  -----------------------------------------------------------------------
  -- Aliases for AXI channel TDATA and TUSER fields
  -- These are a convenience for viewing data in a simulator waveform viewer.
  -- If using ModelSim or Questa, add "-voptargs=+acc=n" to the vsim command
  -- to prevent the simulator optimizing away these signals.
  -----------------------------------------------------------------------

  -- Phase slave channel alias signals
  signal s_axis_phase_tdata_phase      : std_logic_vector(13 downto 0) := (others => '0');

  -- Data master channel alias signals
  signal m_axis_data_tdata_sine        : std_logic_vector(13 downto 0) := (others => '0');


  signal end_of_simulation : boolean := false;
     
begin

  -----------------------------------------------------------------------
  -- Instantiate the DUT
  -----------------------------------------------------------------------

  dut : entity work.dds_compiler_3
    port map (
      aclk                            => aclk
      ,s_axis_phase_tvalid             => s_axis_phase_tvalid
      ,s_axis_phase_tdata              => s_axis_phase_tdata
      ,m_axis_data_tvalid              => m_axis_data_tvalid
      ,m_axis_data_tdata               => m_axis_data_tdata
      );

  -----------------------------------------------------------------------
  -- Generate clock
  -----------------------------------------------------------------------

  clock_gen : process
  begin
    aclk <= '0';
    if (end_of_simulation) then
      wait;
    else
      wait for CLOCK_PERIOD;
      loop
        aclk <= '0';
        wait for CLOCK_PERIOD/2;
        aclk <= '1';
        wait for CLOCK_PERIOD/2;
      end loop;
    end if;
  end process clock_gen;

  -----------------------------------------------------------------------
  -- Generate inputs
  -----------------------------------------------------------------------

  stimuli : process
    variable phase : unsigned(13 downto 0);  -- internal variable for phase input calculations
  begin

    -- Drive inputs T_HOLD time after rising edge of clock
    wait until rising_edge(aclk);
    wait for T_HOLD;

    -- Input an incrementing phase each cycle, and run for long enough to produce 5 periods of outputs
    phase := "00000000000000";  -- start with zero phase
    for cycle in 0 to 159 loop
      s_axis_phase_tvalid  <= '1';
      s_axis_phase_tdata <= (others => '0');  -- set unused TDATA bits to zero
      s_axis_phase_tdata(13 downto 0) <= std_logic_vector(phase);  -- phase index
      wait for CLOCK_PERIOD;
      phase := phase + "00000000000000";  -- increment input phase by fixed amount each cycle
    end loop;
    s_axis_phase_tvalid <= '0';

    -- End of test
    end_of_simulation <= true;           
    report "Not a real failure. Simulation finished successfully. Test completed successfully" severity failure;
    wait;

  end process stimuli;

  -----------------------------------------------------------------------
  -- Check outputs
  -----------------------------------------------------------------------

  check_outputs : process
    variable check_ok : boolean := true;
  begin

    -- Check outputs T_STROBE time after rising edge of clock
    wait until rising_edge(aclk);
    wait for T_STROBE;

    -- Do not check the output payload values, as this requires the behavioral model
    -- which would make this demonstration testbench unwieldy.
    -- Instead, check the protocol of the data master channel:
    -- check that the payload is valid (not X) when TVALID is high

    if m_axis_data_tvalid = '1' then
      if is_x(m_axis_data_tdata) then
        report "ERROR: m_axis_data_tdata is invalid when m_axis_data_tvalid is high" severity error;
        check_ok := false;
      end if;

    end if;

    assert check_ok
      report "ERROR: terminating test with failures." severity failure;

  end process check_outputs;

  -----------------------------------------------------------------------
  -- Assign TDATA fields to aliases, for easy simulator waveform viewing
  -----------------------------------------------------------------------

  -- Phase slave channel alias signals
  s_axis_phase_tdata_phase      <= s_axis_phase_tdata(13 downto 0);

  -- Data master channel alias signals: update these only when they are valid
  m_axis_data_tdata_sine        <= m_axis_data_tdata(13 downto 0) when m_axis_data_tvalid = '1';

end tb;

