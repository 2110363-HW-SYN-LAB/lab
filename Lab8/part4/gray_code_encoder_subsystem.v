`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////

// This module handle the encoding of Binary to Gray code
// This module contain error(s) that need to be fixed
// Hints : the encoding is wrong

//////////////////////////////////////////////////////////////////////////////////

module gray_code_encoder_subsystem (
    input  wire [3:0] datain,
    output wire [3:0] dataout
);

  reg [3:0] dataout_reg = 4'b0000;
  
  assign dataout = dataout_reg;

  always @(*) begin
    case(datain)
        4'b0000: dataout_reg <= 4'b0000;
        4'b0001: dataout_reg <= 4'b0001;
        4'b0010: dataout_reg <= 4'b0011;
        4'b0011: dataout_reg <= 4'b0010;
        4'b0100: dataout_reg <= 4'b0110;
        4'b0101: dataout_reg <= 4'b0111;
        4'b0110: dataout_reg <= 4'b0100;
        4'b0111: dataout_reg <= 4'b0101;
        4'b1000: dataout_reg <= 4'b1100;
        4'b1001: dataout_reg <= 4'b1101;
        4'b1010: dataout_reg <= 4'b1111;
        4'b1011: dataout_reg <= 4'b1110;
        4'b1100: dataout_reg <= 4'b1010;
        4'b1101: dataout_reg <= 4'b1011;
        4'b1110: dataout_reg <= 4'b1000;
        4'b1111: dataout_reg <= 4'b1001;
        default: dataout_reg <= 4'b0000;
    endcase
  end

endmodule
