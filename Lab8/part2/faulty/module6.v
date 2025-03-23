`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////

// This faulty module showcases an error message
// The error is caused by port mismatch

//////////////////////////////////////////////////////////////////////////////////

module module6 (
    input  wire a,
    output wire b
);

  // incorrect port assignment
  some_module_2 some_module_inst (
    .a_x(a),
    .b_x(b)
  );

endmodule


module some_module_2 (
    input  wire a,
    output wire b
);

  assign b = a;

endmodule