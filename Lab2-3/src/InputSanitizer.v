`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 01/01/2025 02:12:15 AM
// Design Name: BCD_Counter
// Module Name: InputSanitizer
// Project Name: BCD_Counter
// Target Devices: Basys3
// Tool Versions: 2023.2
// Description: Module to sanitize input from buttons
//////////////////////////////////////////////////////////////////////////////////


module InputSanitizer #(
    parameter CounterWidth = 1,
    parameter DebounceTime = 1
) (
    input  wire [3:0] DataIn,
    input  wire       Clk,
    input  wire       Reset,
    output wire [3:0] DataOut
);
  // Add your code here

  // End of your code
endmodule
