`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 01/01/2025 02:11:40 AM
// Design Name: BCD_Counter
// Module Name: Debouncer
// Project Name: BCD_Counter
// Target Devices: Basys3
// Tool Versions: 2023.2
// Description: Debouncer module
//////////////////////////////////////////////////////////////////////////////////


module Debouncer #(
    parameter CounterWidth = 1,
    parameter DebounceTime = 1
) (
    input  wire DataIn,
    input  wire Clk,
    input  wire Reset,
    output wire DataOut
);
  reg [CounterWidth-1:0] Counter = 0;
  // Add your code here

  // End of your code
endmodule
