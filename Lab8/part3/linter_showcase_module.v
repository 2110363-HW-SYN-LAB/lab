`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////

// The module for showcase linter
// The module will be connected by input_1 -> some_logic_1 -> some_logic_2 -> output_1 (This will be connected correctly)
// The module will be connected by input_1 -> some_logic_1 -> some_logic_2 -> output_2 (We will mistype the wire connection name)
// The module will be connected by input_1 -> some_logic_1 -> some_logic_2 -> output_3 (We will use the unmatched wire connection width)
// Observe the linter output

//////////////////////////////////////////////////////////////////////////////////

module linter_showcase_module (
    input  wire [2:0] input_1,
    output wire [2:0] output_1,
    output wire [2:0] output_2,
    output wire [2:0] output_3
);

  // This module connection is correct
  wire [2:0] correct_connection;
  some_logic_1 some_logic_1_inst_1 (
      .a(input_1),
      .b(correct_connection)
  );
  some_logic_2 some_logic_2_inst_1 (
      .a(correct_connection),
      .b(output_1)
  );

  // wire connection name is mistyped
  wire [2:0] mistyped_connection;
  some_logic_1 some_logic_1_inst_2 (
      .a(input_1),
      .b(mistyped_connection)
  );
  some_logic_2 some_logic_2_inst_2 (
      .a(MISTYPED_connection),
      .b(output_2)
  );

  // wire connection width is unmatched
  wire unmatched_connection;
  some_logic_1 some_logic_1_inst_3 (
      .a(input_1),
      .b(unmatched_connection)
  );
  some_logic_2 some_logic_2_inst_3 (
      .a(unmatched_connection),
      .b(output_3)
  );

endmodule

// some module for showcase linter
module some_logic_1 (
    input  wire [2:0] a,
    output wire [2:0] b
);

  assign b = a;

endmodule

module some_logic_2 (
    input  wire [2:0] a,
    output wire [2:0] b
);

  assign b[0] = a[2];
  assign b[1] = a[1];
  assign b[2] = a[0];

endmodule
