`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////

// fixed by using the correct module port names

//////////////////////////////////////////////////////////////////////////////////

module module6 (
    input  wire a,
    output wire b
);

  some_module_2 some_module_inst (
    .a(a),
    .b(b)
  );

endmodule


module some_module_2 (
    input  wire a,
    output wire b
);

  assign b = a;

endmodule