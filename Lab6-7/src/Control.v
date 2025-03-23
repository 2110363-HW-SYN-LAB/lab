module Control (
    input [6:0] opcode,         // opcode field of instruction
    output reg memRead,         // memory read signal
    output reg [1:0] memtoReg,  // memory to register signal
    output reg [2:0] ALUOp,     // ALU operation signal
    output reg memWrite,        // memory write signal
    output reg ALUSrc1,         // ALU source 1 signal (for MUX)
    output reg ALUSrc2,         // ALU source 2 signal (for MUX)
    output reg regWrite,        // register write signal
    output reg PCSel            // PC select signal (for MUX PC)
);

    // TODO: implement your Control here
    // Hint: follow the Architecture (figure in spec) to set output signal
    

endmodule

