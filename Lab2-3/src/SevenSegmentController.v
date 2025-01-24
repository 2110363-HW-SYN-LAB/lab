`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Design Name: BCD_Counter
// Module Name: SevenSegmentController
// Project Name: BCD_Counter
// Target Devices: Basys3
// Tool Versions: 2023.2
// Description: Controller module for 7-Segment Display
//////////////////////////////////////////////////////////////////////////////////


module SevenSegmentController #(
    parameter ControllerClockCycle   = 1,
    parameter ControllerCounterWidth = 1
) (
    input  wire       Reset,
    input  wire       Clk,
    output wire [3:0] AN,
    output wire [1:0] Selector
);
  reg [ControllerCounterWidth-1:0] Counter = 0;
  // Add your code here

  // End of your code
endmodule
