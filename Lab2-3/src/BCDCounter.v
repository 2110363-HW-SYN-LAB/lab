`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 01/01/2025 02:10:33 AM
// Design Name: BCD_Counter
// Module Name: BCDCounter
// Project Name: BCD_Counter
// Target Devices: Basys3
// Tool Versions: 2023.2
// Description: Top module for BCD Counter
//////////////////////////////////////////////////////////////////////////////////


module BCDCounter #(
    // Modify the parameter to match the requirements
    parameter CounterWidth = 1,
    parameter DebounceTime = 1,
    parameter ControllerClockCycle = 1,
    parameter ControllerCounterWidth = 1
) (
    input  wire       Clk,
    input  wire       Reset,
    input  wire [3:0] Trigger,
    output wire [7:0] Segments,
    output wire [3:0] AN
);
  // Add your code here

  // End of your code
endmodule
