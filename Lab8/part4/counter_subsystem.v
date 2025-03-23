`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////

// This module handle the Binary counter
// This module contain error(s) that need to be fixed
// Hints : reset seem odd

//////////////////////////////////////////////////////////////////////////////////

module counter_subsystem (
    input wire clk,
    input wire trigger,
    input wire reset,
    output wire [3:0] dataout
);

  reg [3:0] dataout_reg = 4'b0000;
  reg       prev_trigger = 1'b0;

  assign dataout = dataout_reg;

  always @(posedge clk) begin
    if (!reset) begin
      dataout_reg  <= 4'b0000;
      prev_trigger <= 1'b0;
    end else begin
      if (trigger == 1 && prev_trigger == 0) begin
        dataout_reg <= dataout_reg + 1;
      end
      prev_trigger <= trigger;
    end
  end

endmodule
