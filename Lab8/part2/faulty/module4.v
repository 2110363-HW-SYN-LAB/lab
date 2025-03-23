`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////

// This faulty module showcases an error message
// The error is caused by the signal being driven by multiple sources

//////////////////////////////////////////////////////////////////////////////////

module module4 (
    input  wire a,
    input  wire b,
    output wire c
);

  assign c = a;

  assign c = b;

endmodule
