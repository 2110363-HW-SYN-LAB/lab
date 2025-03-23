`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////

// This faulty module showcases an error message
// The error is caused by missing module instantiation

//////////////////////////////////////////////////////////////////////////////////

module module5 (
    input  wire a,
    output wire b
);

  some_module_1 some_module_inst (
    .a(a),
    .b(b)
  );

endmodule
