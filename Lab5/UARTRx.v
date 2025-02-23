`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 01/26/2025 11:54:43 PM
// Design Name: UARTLedSystem
// Module Name: UARTRx
// Project Name: UARTLedSystem
// Target Devices: Basys3
// Tool Versions: 2023.2
// Description: Rx module for UART communication. Read data from Host PC via UART interface then write it to the FIFO.
//////////////////////////////////////////////////////////////////////////////////


module UARTRx (
    input  wire       Clk,
    input  wire       Reset,
    // UART interface
    input  wire       Rx,
    // FIFO interface
    output wire [7:0] DataOut,
    output wire       WriteEnable,
    input  wire       Full
);
  // Add your code here

  // End or your code
endmodule
