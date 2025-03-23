module ALUCtrl (
    input [2:0] ALUOp,          // ALU operation
    input funct7,               // funct7 field of instruction (only 30th bit of instruction)
    input [2:0] funct3,         // funct3 field of instruction
    output reg [3:0] ALUCtl     // ALU control signal
);

    // TODO: implement your ALU control here
    // For testbench verifying, Do not modify input and output pin
    // For funct7, we care only 30th bit of instruction. Why?
    // See all R-type instructions in the lab and observe.

    // Hint: using ALUOp, funct7, funct3 to select exact operation
    


endmodule

