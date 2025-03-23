module SingleCycleCPU (
    input   wire        clk,
    input   wire        start,
    output  wire [7:0]  segments,
    output  wire [3:0]  an
);

// When input start is zero, cpu should reset
// When input start is high, cpu start running

// TODO: Connect wires to realize SingleCycleCPU and instantiate all modules related to seven-segment displays
// The following provides simple template,

PC m_PC(
    .clk(),
    .rst(start),
    .pc_i(),
    .pc_o()
);

Adder m_Adder_1(
    .a(),
    .b(),
    .sum()
);

InstructionMemory m_InstMem(
    .readAddr(),
    .inst()
);

Control m_Control(
    .opcode(),
    .memRead(),
    .memtoReg(),
    .ALUOp(),
    .memWrite(),
    .ALUSrc1(),
    .ALUSrc2(),
    .regWrite(),
    .PCSel()
);

// ------------------------------------------
// For Student:
// Do not change the modules' instance names and I/O port names!!
// Or you will fail validation.
// By the way, you still have to wire up these modules

Register m_Register(
    .clk(),
    .rst(start),
    .regWrite(),
    .readReg1(),
    .readReg2(),
    .writeReg(),
    .writeData(),
    .readData1(),
    .readData2(),
    .reg5Data()
);

DataMemory m_DataMemory(
    .rst(start),
    .clk(),
    .memWrite(),
    .memRead(),
    .address(),
    .writeData(),
    .readData()
);

// ------------------------------------------

ImmGen m_ImmGen(
    .inst(),
    .imm()
);

Mux2to1 #(.size(32)) m_Mux_PC(
    .sel(),
    .s0(),
    .s1(),
    .out()
);

Mux2to1 #(.size(32)) m_Mux_ALU_1(
    .sel(),
    .s0(),
    .s1(),
    .out()
);

Mux2to1 #(.size(32)) m_Mux_ALU_2(
    .sel(),
    .s0(),
    .s1(),
    .out()
);

ALUCtrl m_ALUCtrl(
    .ALUOp(),
    .funct7(),
    .funct3(),
    .ALUCtl()
);

ALU m_ALU(
    .ALUctl(),
    .brLt(),
    .brEq(),
    .A(),
    .B(),
    .ALUOut()
);

Mux3to1 #(.size(32)) m_Mux_WriteData(
    .sel(),
    .s0(),
    .s1(),
    .s2(),
    .out()
);

BranchComp m_BranchComp(
    .rs1(),
    .rs2(),
    .brLt(),
    .brEq()
);

`ifdef COCOTB_SIM
  initial begin
    $dumpfile("waveform.vcd");  // Name of the dump file
    $dumpvars(0, SingleCycleCPU);  // Dump all variables for the top module
  end
`endif

endmodule
