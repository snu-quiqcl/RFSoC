`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SNU QuIQCL
// Engineer: Jeonghyun Park
// 
// Create Date: 2023/02/23 17:14:19
// Design Name: 
// Module Name: RFDC_Controller
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module RFDC_Contoller
#(
    parameter DEST_VAL = 16'h0,
    parameter CHANNEL_LENGTH = 12,
    parameter AXIS_DATA_WIDTH = 256
)
(
    //////////////////////////////////////////////////////////////////////////////////  
    // IO declaration for GPO_Core
    //////////////////////////////////////////////////////////////////////////////////
    input wire CLK100MHZ,
    input wire s00_axis_aclk,
    input wire reset,
    input wire override_en,
    input wire selected_en,
    input wire[63:0] override_value,
    input wire counter_matched,
    input wire [127:0] gpo_in,
    input wire busy,
    output wire [127:0] error_data,
    output wire overrided,
    output wire busy_error,
    
    //////////////////////////////////////////////////////////////////////////////////  
    // AXIS declaration for RFDC DAC
    //////////////////////////////////////////////////////////////////////////////////
    output reg [AXIS_DATA_WIDTH - 1:0] s00_axis_tdata,
    output reg s00_axis_tvalid,
    output reg dac00_fast_shutdown,
    output reg dac00_pl_event,
    output reg [47:0] dac00_nco_freq,
    output reg [17:0] dac00_nco_phase,
    output reg dac00_nco_phase_rst,
    output reg [5:0] dac00_nco_update_en,
    output reg dac0_nco_update_req,
    output reg dac0_sysref_int_gating,
    output reg dac0_sysref_int_reenable,
    
    input wire s00_axis_tready
    );
  
//////////////////////////////////////////////////////////////////////////////////  
// Wire declaration for GPO_Core
//////////////////////////////////////////////////////////////////////////////////

wire selected;
wire[63:0] gpo_out;

//////////////////////////////////////////////////////////////////////////////////  
// GPO_Core
//////////////////////////////////////////////////////////////////////////////////

GPO_Core #(
    .DEST_VAL(DEST_VAL),
    .CHANNEL_LENGTH(CHANNEL_LENGTH)
)
GPO_Core0(
    .CLK100MHZ(CLK100MHZ),
    .reset(reset),
    .override_en(override_en),
    .selected_en(selected_en),
    .override_value(override_value),
    .counter_matched(counter_matched),
    .gpo_in(gpo_in),
    .busy(busy),
    .selected(selected),
    .error_data(error_data),
    .overrided(overrided),
    .busy_error(busy_error),
    .gpo_out(gpo_out)
);

//////////////////////////////////////////////////////////////////////////////////  
// internal register declaration
//////////////////////////////////////////////////////////////////////////////////
reg [7:0] data_strobe;
reg [3:0] dac00_mux_select;
reg [47:0] gpo00_buffer;
reg gpo0_selected_buffer;

reg [AXIS_DATA_WIDTH - 1:0] s00_axis_tdata_buffer;
reg s00_axis_tvalid_buffer;
reg dac00_fast_shutdown_buffer;
reg dac00_pl_event_buffer;
reg [47:0] dac00_nco_freq_buffer;
reg [17:0] dac00_nco_phase_buffer;
reg dac00_nco_phase_rst_buffer;
reg [5:0] dac00_nco_update_en_buffer;
reg dac0_nco_update_req_buffer;
reg dac0_sysref_int_gating_buffer;
reg dac0_sysref_int_reenable_buffer;

//////////////////////////////////////////////////////////////////////////////////  
// dac00_mux_select value definition
//////////////////////////////////////////////////////////////////////////////////
parameter S00_AXIS_TDATA = 4'h0;
parameter S00_AXIS_TVALID = 4'h1;
parameter DAC00_FAST_SHUTDOWN = 4'h2;
parameter DAC00_PL_EVENT = 4'h3;
parameter DAC00_NCO_FREQ = 4'h4;
parameter DAC00_NCO_PHASE = 4'h5;
parameter DAC00_NCO_PHASE_RST = 4'h6;
parameter DAC00_NCO_UPDATE_EN = 4'h7;
parameter DAC0_NCO_UPDATE_REQ = 4'h8;
parameter DAC0_SYSREF_INT_GATING = 4'h9;
parameter DAC0_SYSREF_INT_REENABLE = 4'hA;
parameter UPDATE = 4'hF;

//////////////////////////////////////////////////////////////////////////////////  
// DAC0_NCO_UPDATE_REQ duration
//////////////////////////////////////////////////////////////////////////////////
reg [15:0] dac0_nco_update_req_counter;

always @( posedge CLK100MHZ ) begin
    if( reset == 1'b1 ) begin
        s00_axis_tdata <= {AXIS_DATA_WIDTH{1'b0}};
        s00_axis_tvalid <= 1'b0;
        dac00_fast_shutdown <= 1'b0;
        dac00_pl_event <= 1'b0;
        dac00_nco_freq <= 48'h0;
        dac00_nco_phase <= 18'h0;
        dac00_nco_phase_rst <= 1'b1;
        dac00_nco_update_en <= 6'b0;
        dac0_nco_update_req <= 1'b0;
        dac0_sysref_int_gating <= 1'b0;
        dac0_sysref_int_reenable <= 1'b0;
        
        s00_axis_tdata_buffer <= {AXIS_DATA_WIDTH{1'b0}};
        s00_axis_tvalid_buffer <= 1'b0;
        dac00_fast_shutdown_buffer <= 1'b0;
        dac00_pl_event_buffer <= 1'b0;
        dac00_nco_freq_buffer <= 48'h0;
        dac00_nco_phase_buffer <= 18'h0;
        dac00_nco_phase_rst_buffer <= 1'b1;
        dac00_nco_update_en_buffer <= 6'b0;
        dac0_nco_update_req_buffer <= 1'b0;
        dac0_sysref_int_gating_buffer <= 1'b0;
        dac0_sysref_int_reenable_buffer <= 1'b0;
        dac0_nco_update_req_counter <= 16'h0;
    end
    
    else begin
        gpo0_selected_buffer <= selected;
        
        if( selected == 1'b1 ) begin
            data_strobe <= gpo_out[47:40];
            dac00_mux_select <= gpo_out[35:32];
            gpo00_buffer <= gpo_out[47:0];
        end
        
        if( gpo0_selected_buffer == 1'b1 ) begin
            case( dac00_mux_select)
                S00_AXIS_TDATA: begin
                    if( data_strobe[0] == 1'b1 ) begin
                       s00_axis_tdata_buffer[31:0] <= gpo00_buffer[31:0];
                    end
                    if( data_strobe[1] == 1'b1 ) begin
                       s00_axis_tdata_buffer[63:32] <= gpo00_buffer[31:0];
                    end
                    if( data_strobe[2] == 1'b1 ) begin
                       s00_axis_tdata_buffer[95:64] <= gpo00_buffer[31:0];
                    end
                    if( data_strobe[3] == 1'b1 ) begin
                       s00_axis_tdata_buffer[127:96] <= gpo00_buffer[31:0];
                    end
                    if( data_strobe[4] == 1'b1 ) begin
                       s00_axis_tdata_buffer[159:128] <= gpo00_buffer[31:0];
                    end
                    if( data_strobe[5] == 1'b1 ) begin
                       s00_axis_tdata_buffer[191:160] <= gpo00_buffer[31:0];
                    end
                    if( data_strobe[6] == 1'b1 ) begin
                       s00_axis_tdata_buffer[223:192] <= gpo00_buffer[31:0];
                    end
                    if( data_strobe[7] == 1'b1 ) begin
                       s00_axis_tdata_buffer[255:224] <= gpo00_buffer[31:0];
                    end
                end
                S00_AXIS_TVALID: begin
                    s00_axis_tvalid_buffer <= gpo00_buffer[0];
                end
                DAC00_FAST_SHUTDOWN: begin
                    dac00_fast_shutdown_buffer <= gpo00_buffer[0];
                end
                DAC00_PL_EVENT: begin
                    dac00_pl_event_buffer <= gpo00_buffer[0];
                end
                DAC00_NCO_FREQ: begin
                    if(data_strobe[0] == 1'b1 ) begin
                        dac00_nco_freq_buffer[31:0] <= gpo00_buffer[31:0];
                    end
                    if(data_strobe[1] == 1'b1 ) begin
                        dac00_nco_freq_buffer[47:32] <= gpo00_buffer[15:0];
                    end
                end
                DAC00_NCO_PHASE: begin
                    dac00_nco_phase_buffer [17:0] <= gpo00_buffer[17:0];
                end
                DAC00_NCO_PHASE_RST: begin
                    dac00_nco_phase_rst_buffer <= gpo00_buffer[0];
                end
                DAC00_NCO_UPDATE_EN: begin
                    dac00_nco_update_en_buffer <= gpo00_buffer[5:0];
                end
                DAC0_NCO_UPDATE_REQ: begin
                    dac0_nco_update_req_buffer <= 1'b1;
                    dac0_nco_update_req_counter <= gpo00_buffer[15:0];
                end
                DAC0_SYSREF_INT_GATING: begin
                    dac0_sysref_int_gating_buffer <= gpo00_buffer[0];
                end
                DAC0_SYSREF_INT_REENABLE: begin
                    dac0_sysref_int_reenable_buffer <= gpo00_buffer[0];
                end
            endcase
            
            if( gpo00_buffer[36] == 1'b1 ) begin
                s00_axis_tdata <= s00_axis_tdata_buffer;
                s00_axis_tvalid <= s00_axis_tvalid_buffer;
                dac00_fast_shutdown <= dac00_fast_shutdown_buffer;
                dac00_pl_event <= dac00_pl_event_buffer;
                dac00_nco_freq <= dac00_nco_freq_buffer;
                dac00_nco_phase <= dac00_nco_phase_buffer;
                dac00_nco_phase_rst <= dac00_nco_phase_rst_buffer;
                dac00_nco_update_en <= dac00_nco_update_en_buffer;
                dac0_nco_update_req <= dac0_nco_update_req_buffer;
                dac0_sysref_int_gating <= dac0_sysref_int_gating_buffer;
                dac0_sysref_int_reenable <= dac0_sysref_int_reenable_buffer;
            end
        end
        
            
        if( dac0_nco_update_req == 1'b1 ) begin
            dac0_nco_update_req_counter <= dac0_nco_update_req_counter - 16'h0001;
            if( dac0_nco_update_req_counter == 16'h0 ) begin
                dac0_nco_update_req_counter <= 16'h0;
                dac0_nco_update_req <= 1'b0;
                dac0_nco_update_req_buffer <= 1'b0;
            end
        end
    end
end
    
endmodule