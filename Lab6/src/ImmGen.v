module ImmGen (
    input [31:0] inst,                  // instruction
    output reg signed [31:0] imm        // imm value (output)
);
    // ImmGen generate imm value base opcode

    wire [6:0] opcode = inst[6:0];
    always @(*) begin
        case(opcode)
            // TODO: implement your ImmGen here
            // Hint: follow the RV32I opcode map (table in spec) to set imm value
            
            
        endcase
    end

endmodule

