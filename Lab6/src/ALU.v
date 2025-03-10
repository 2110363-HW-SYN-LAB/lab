module ALU (
    input [3:0] ALUctl,                     // This will be used to select the operation of ALU
    input brLt,                             // Branch Less Than (for branching instruction)
    input brEq,                             // Branch Equal (for branching instruction)
    input signed [31:0] A,B,                // Operands
    output reg signed [31:0] ALUOut,        // Output of ALU
);
    // ALU has two operand, it execute different operator based on ALUctl wire

    // TODO: implement your ALU here
    // Hint: you can use operator to implement
    
endmodule

