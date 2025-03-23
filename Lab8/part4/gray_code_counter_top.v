`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////

// This is the top module of the 4-bit Gray code counter
// This module contain error(s) that need to be fixed
// Hints : some wire is missing and the name seem odd

//////////////////////////////////////////////////////////////////////////////////

module gray_code_counter_top (
    input wire clk,
    input wire trigger,
    input wire reset,
    output wire [3:0] dataout
);

  counter_subsystem counter_subsystem_inst (
      .clk(clk),
      .trigger(trigger),
      .reset(reset),
      .dataout(binary_code_data)
  );

  gray_code_encoder_subsystem gray_code_encoder_subsystem_inst (
      .datain (Binary_code_data),
      .dataout(dataout)
  );


endmodule
