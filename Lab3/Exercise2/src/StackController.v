`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 01/16/2025 01:45:42 AM
// Design Name: StackCircuit
// Module Name: StackController
// Project Name: StackCircuit
// Target Devices: Basys3
// Tool Versions: 2023.2
// Description: This module is used to implement the stack from RAMUnit
//////////////////////////////////////////////////////////////////////////////////


module StackController (
    input  wire       Push,
    input  wire       Pop,
    input  wire       Clk,
    input  wire       Reset,
    input  wire [7:0] DataIn,
    output wire [7:0] StackCounter,
    output wire [7:0] StackValue,
    output wire       RAMWriteEnable,
    output wire       RAMEnable,
    output wire [7:0] RAMAddress,
    output wire [7:0] RAMDataIn,
    input  wire [7:0] RAMDataOut
);
  // add your code here
  
  // End of your code
`ifdef COCOTB_SIM
  initial begin
    $dumpfile("waveform.vcd");  // Name of the dump file
    $dumpvars(0, StackController);  // Dump all variables for the top module
  end
`endif
endmodule
