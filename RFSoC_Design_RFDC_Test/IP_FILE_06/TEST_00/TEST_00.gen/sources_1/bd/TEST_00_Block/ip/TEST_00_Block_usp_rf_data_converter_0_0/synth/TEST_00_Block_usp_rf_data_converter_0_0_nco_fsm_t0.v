//----------------------------------------------------------------------------
// Title : NCO Update FSM for Tile 0
// Project : Ultrascale+ RF Data Converter Subsystem
//----------------------------------------------------------------------------
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES. 

`timescale 1ps/1ps
(* DowngradeIPIdentifiedWarnings="yes" *)
module TEST_00_Block_usp_rf_data_converter_0_0_nco_fsm_t0 #(
  parameter MULTITILE_SYNC = 0 )
(
  input              clk,
  input              reset,
  input              enable,
  input              sysref_int_reenable,
  input              sysref_int_gating,
  // Signals to/from arbiter
  output reg         nco_drp_arb_req,
  input              nco_drp_arb_gnt,
  output reg [15:0]  nco_drp_din,
  input      [15:0]  arb_drp_dout,
  output reg [11:0]  nco_drp_daddr,
  output             nco_drp_dwe,
  output             nco_drp_den,
  input              nco_drp_drdy,
  // Signals from user
  input      [47:0]  conv0_nco_freq,
  input      [17:0]  conv0_nco_phase,
  input              conv0_nco_phase_rst,
  input       [5:0]  conv0_nco_update_en,
  input      [47:0]  conv1_nco_freq,
  input      [17:0]  conv1_nco_phase,
  input              conv1_nco_phase_rst,
  input       [5:0]  conv1_nco_update_en,
  input      [47:0]  conv2_nco_freq,
  input      [17:0]  conv2_nco_phase,
  input              conv2_nco_phase_rst,
  input       [5:0]  conv2_nco_update_en,
  input      [47:0]  conv3_nco_freq,
  input      [17:0]  conv3_nco_phase,
  input              conv3_nco_phase_rst,
  input       [5:0]  conv3_nco_update_en,
  input              nco_update_req,
  output reg  [1:0]  nco_update_busy
);

  reg    [4:0]  index;
  wire  [15:0]  nco_drp_din_i;
  wire  [11:0]  nco_drp_daddr_i;
  wire [399:0]  drp_data_vec;
  wire  [55:0]  drp_addr_vec;
  wire  [27:0]  nco_update_en_vec;
  wire          update_dyn;
  wire          sysref_int;
  reg           init_run;
  wire  [29:0]  sysref_reg = 30'h2728c980;

  reg   [3:0]  nco_fsm;
  // States for the nco fsm
  localparam idle             = 3'd0;
  localparam wait_enable      = 3'd1;
  localparam wait_gnt         = 3'd2;
  localparam wait_rdy         = 3'd3;
  localparam next_cmd         = 3'd4;
  localparam wait_reenable    = 3'd5;

  assign update_dyn = (MULTITILE_SYNC == 0) ? 1'b1 : 1'b0;

  assign nco_update_en_vec = {1'b0, sysref_int_gating, update_dyn, conv3_nco_update_en, conv2_nco_update_en, conv1_nco_update_en, conv0_nco_update_en, sysref_int_gating};

  assign drp_data_vec = {15'h0000, 1'b1, 15'h0000, conv3_nco_phase_rst, 14'h0000, conv3_nco_phase[17:16], conv3_nco_phase[15:0], conv3_nco_freq[47:32], conv3_nco_freq[31:16], conv3_nco_freq[15:0],
                                         15'h0000, conv2_nco_phase_rst, 14'h0000, conv2_nco_phase[17:16], conv2_nco_phase[15:0], conv2_nco_freq[47:32], conv2_nco_freq[31:16], conv2_nco_freq[15:0],
                                         15'h0000, conv1_nco_phase_rst, 14'h0000, conv1_nco_phase[17:16], conv1_nco_phase[15:0], conv1_nco_freq[47:32], conv1_nco_freq[31:16], conv1_nco_freq[15:0],
                                         15'h0000, conv0_nco_phase_rst, 14'h0000, conv0_nco_phase[17:16], conv0_nco_phase[15:0], conv0_nco_freq[47:32], conv0_nco_freq[31:16], conv0_nco_freq[15:0]};

  assign drp_addr_vec = {8'h2E, 8'h24, 8'h28, 8'h29, 8'h25, 8'h26, 8'h27};

  always @(posedge clk)
  begin
    if (reset == 1'b1) begin
      nco_fsm         <= idle;
      nco_drp_arb_req <= 1'b0;
      nco_update_busy <= 2'b00;
      index           <= 5'd0;
      init_run        <= 1'b1;
    end
    else begin
      case(nco_fsm)
        idle: begin
          init_run  <= 1'b1;
          if (nco_update_req == 1'b1 && nco_update_en_vec != 28'd0) begin
            // rule out any slices that don't need to be updated
            if (nco_update_en_vec[0] != 1'b0) begin
              index <= 5'd0;
            end
            else if (nco_update_en_vec[6:1] != 1'b0) begin
              index <= 5'd1;
            end
            else if (nco_update_en_vec[12:7] != 1'b0) begin
              index <= 5'd7;
            end
            else if (nco_update_en_vec[18:13] != 1'b0) begin
              index <= 5'd13;
            end
            else if (nco_update_en_vec[24:19] != 1'b0) begin
              index <= 5'd19;
            end
            if (enable ==  1'b1) begin
              // Request access to the drp
              nco_drp_arb_req    <= 1'b1;
              nco_update_busy[0] <= 1'b1;
              if (sysref_int_gating == 1'b1) begin
                nco_fsm          <= wait_gnt;
                nco_update_busy[1] <= 1'b1;
              end
              else begin
                nco_fsm <= wait_gnt;
              end
            end
            else begin
              // Remember that the user has requested an update
              // once enable has gone high
              nco_fsm <= wait_enable;
            end
          end
          else begin
            nco_fsm <= idle;
          end
        end

        wait_enable: begin
          if (enable ==  1'b1) begin
            // Request access to the drp
            nco_drp_arb_req    <= 1'b1;
            nco_update_busy[0] <= 1'b1;
            if (sysref_int_gating == 1'b1) begin
              nco_fsm            <= wait_gnt;
              nco_update_busy[1] <= 1'b1;
            end
            else begin
              nco_fsm  <= wait_gnt;
            end
          end
          else begin
            nco_fsm <= wait_enable;
          end
        end

        wait_gnt: begin
          if (nco_update_en_vec[index] == 1'b1) begin
            if (nco_drp_arb_gnt == 1'b1) begin
              nco_fsm <= wait_rdy;
              index   <= index + 1;
            end
          end
          else begin
            index     <= index + 1;
            nco_fsm   <= next_cmd;
            init_run  <= 1'b1;
          end
        end

        wait_rdy: begin
          if (nco_drp_drdy == 1'b1) begin
            // The write should be complete here so
            // we can move on to the next cmd
            init_run <= 0;
            if (index == 27) begin
              nco_fsm <= idle;
              nco_update_busy[1] <= 1'b0;
              nco_drp_arb_req    <= 1'b0;
            end
            else begin
              nco_fsm <= next_cmd;
            end
          end
          else begin
            nco_fsm  <= wait_rdy;
          end
        end

        next_cmd: begin
          if (index < 7) begin
            nco_fsm <= wait_gnt;
          end
          else if (index < 13) begin
            // Check to see if there is anything to write here
            if (nco_update_en_vec[12:7] != 1'b0) begin
              nco_fsm <= wait_gnt;
            end
            else begin
              // Going on next slice
              index   <= 5'd13;
              nco_fsm <= next_cmd;
              init_run  <= 1'b1;
            end
          end
          else if (index < 19) begin
            // Check to see if there is anything to write here
            if (nco_update_en_vec[18:13] != 1'b0) begin
              nco_fsm <= wait_gnt;
            end
            else begin
               index   <= 5'd19;
               nco_fsm <= next_cmd;
               init_run  <= 1'b1;
            end
          end
          else if (index < 25) begin
            // Check to see if there is anything to write here
            if (nco_update_en_vec[24:19] != 1'b0) begin
              nco_fsm <= wait_gnt;
            end
            else begin
               index    <= 5'd25;
               nco_fsm  <= next_cmd;
               init_run <= 1'b1;
            end
          end
          else if (index == 25 && nco_update_en_vec[25] != 1'b0) begin
            // This is the final write required for updating registers
            nco_fsm <= wait_gnt;
          end
          else begin
            if (sysref_int_gating == 1'b1) begin
              // In this case we need to wait for action from the user
              index    <= 5'd26;
              init_run <= 1'b1;
              nco_update_busy[0] <= 1'b0;
              nco_fsm  <= wait_reenable;
            end
            else begin
              // All the update_en bits have been scanned so NCO update
              // is complete
              nco_fsm <= idle;
              nco_update_busy[0] <= 1'b0;
              nco_drp_arb_req    <= 1'b0;
            end
          end
        end

        wait_reenable: begin
          if (sysref_int_reenable == 1'b1) begin
            nco_fsm <= wait_gnt;
          end
          else begin
            nco_fsm  <= wait_reenable;
          end
        end

        default: begin
          nco_fsm         <= idle;
          nco_drp_arb_req <= 1'b0;
          nco_update_busy <= 2'b00;
          index           <= 5'd0;
          init_run        <= 1'b1;
        end
      endcase
    end
  end

  assign nco_drp_dwe  = (((nco_fsm == wait_gnt && nco_drp_arb_gnt == 1'b1 && init_run == 1'b1) || nco_drp_drdy == 1'b1) && nco_update_en_vec[index] == 1'b1) ? 1'b1 : 1'b0;
  assign nco_drp_den  = (((nco_fsm == wait_gnt && nco_drp_arb_gnt == 1'b1 && init_run == 1'b1) || nco_drp_drdy == 1'b1) && nco_update_en_vec[index] == 1'b1) ? 1'b1 : 1'b0;

  assign nco_drp_din_i  = (index == 5'd0) ? {2'b00, sysref_reg[13:0]}:
                          (index == 5'd1) ? drp_data_vec[15:0]:
                          (index == 5'd2) ? drp_data_vec[31:16]:
                          (index == 5'd3) ? drp_data_vec[47:32]:
                          (index == 5'd4) ? drp_data_vec[63:48]:
                          (index == 5'd5) ? drp_data_vec[79:64]:
                          (index == 5'd6) ? drp_data_vec[95:80]:
                          (index == 5'd7) ? drp_data_vec[111:96]:
                          (index == 5'd8) ? drp_data_vec[127:112]:
                          (index == 5'd9) ? drp_data_vec[143:128]:
                          (index == 5'd10) ? drp_data_vec[159:144]:
                          (index == 5'd11) ? drp_data_vec[175:160]:
                          (index == 5'd12) ? drp_data_vec[191:176]:
                          (index == 5'd13) ? drp_data_vec[207:192]:
                          (index == 5'd14) ? drp_data_vec[223:208]:
                          (index == 5'd15) ? drp_data_vec[239:224]:
                          (index == 5'd16) ? drp_data_vec[255:240]:
                          (index == 5'd17) ? drp_data_vec[271:256]:
                          (index == 5'd18) ? drp_data_vec[287:272]:
                          (index == 5'd19) ? drp_data_vec[303:288]:
                          (index == 5'd20) ? drp_data_vec[319:304]:
                          (index == 5'd21) ? drp_data_vec[335:320]:
                          (index == 5'd22) ? drp_data_vec[351:336]:
                          (index == 5'd23) ? drp_data_vec[367:352]:
                          (index == 5'd24) ? drp_data_vec[383:368]:
                          (index == 5'd25) ? drp_data_vec[399:384]:
                          (index == 5'd26) ? {2'b11, sysref_reg[13:0]}:
                          16'h0000;

    assign nco_drp_daddr_i = (index == 5'd0) ?  {12'h728}:
                             (index == 5'd1) ?  {4'h0, drp_addr_vec[7:0]}:
                             (index == 5'd2) ?  {4'h0, drp_addr_vec[15:8]}:
                             (index == 5'd3) ?  {4'h0, drp_addr_vec[23:16]}:
                             (index == 5'd4) ?  {4'h0, drp_addr_vec[31:24]}:
                             (index == 5'd5) ?  {4'h0, drp_addr_vec[39:32]}:
                             (index == 5'd6) ?  {4'h0, drp_addr_vec[47:40]}:
                             (index == 5'd7) ?  {4'h1, drp_addr_vec[7:0]}:
                             (index == 5'd8) ?  {4'h1, drp_addr_vec[15:8]}:
                             (index == 5'd9) ?  {4'h1, drp_addr_vec[23:16]}:
                             (index == 5'd10)?  {4'h1, drp_addr_vec[31:24]}:
                             (index == 5'd11) ? {4'h1, drp_addr_vec[39:32]}:
                             (index == 5'd12) ? {4'h1, drp_addr_vec[47:40]}:
                             (index == 5'd13) ? {4'h2, drp_addr_vec[7:0]}:
                             (index == 5'd14) ? {4'h2, drp_addr_vec[15:8]}:
                             (index == 5'd15) ? {4'h2, drp_addr_vec[23:16]}:
                             (index == 5'd16) ? {4'h2, drp_addr_vec[31:24]}:
                             (index == 5'd17) ? {4'h2, drp_addr_vec[39:32]}:
                             (index == 5'd18) ? {4'h2, drp_addr_vec[47:40]}:
                             (index == 5'd19) ? {4'h3, drp_addr_vec[7:0]}:
                             (index == 5'd20) ? {4'h3, drp_addr_vec[15:8]}:
                             (index == 5'd21) ? {4'h3, drp_addr_vec[23:16]}:
                             (index == 5'd22) ? {4'h3, drp_addr_vec[31:24]}:
                             (index == 5'd23) ? {4'h3, drp_addr_vec[39:32]}:
                             (index == 5'd24) ? {4'h3, drp_addr_vec[47:40]}:
                             (index == 5'd25) ? {4'h7, drp_addr_vec[55:48]}:
                             (index == 5'd26) ? {12'h728}:
                             12'h000;

  always @(posedge clk)
  begin
    nco_drp_din   <= nco_drp_din_i;
    nco_drp_daddr <= nco_drp_daddr_i;
  end

endmodule
