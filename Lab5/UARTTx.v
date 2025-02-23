`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 01/26/2025 11:54:27 PM
// Design Name: UARTLedSystem
// Module Name: UARTTx
// Project Name: UARTLedSystem
// Target Devices: Basys3
// Tool Versions: 2023.2
// Description: Tx module for UART communication. Read data from the FIFO then sent it to Host PC via UART interface.
//////////////////////////////////////////////////////////////////////////////////


module UARTTx (
    input  wire       Clk,
    input  wire       Reset,
    // UART interface
    output wire       Tx,
    // FIFO interface
    input  wire [7:0] DataIn,
    input  wire       Empty,
    output wire       ReadEnable,
    input  wire       DataValid
);
  // Add your code here
  
  // End of your code
endmodule
