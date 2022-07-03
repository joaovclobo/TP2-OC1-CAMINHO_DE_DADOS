`include "add4.v"
`include "addSum.v"
`include "alu_control.v"
`include "alu.v"
`include "control.v"
`include "dataMemory.v"
`include "immGen.v"
`include "instructionDivision.v"
`include "muxbranch.v"
`include "muxmem.v"
`include "muxreg.v"
`include "pc.v"
`include "readInstructions.v"
`include "registers.v"

module dataPath (
    input wire reset,
    input wire clock
);

    wire [31:0] instruction, writeData, readData1, readData2, saidaMuxreg, readData;
    wire [31:0] aluResult, add4Out, addSumOut, pcIn, pcOut, extImmediate;
    wire [6:0] opcode, funct7;
    wire [4:0] rd, rs1, rs2;
    wire [3:0] aluControlOut;
    wire [2:0] funct3;
    wire [1:0]aluOp;
    wire branch, memRead, memtoReg, memWrite, aluSrc, regwrite, aluZero, clk, reset;

    pc pc_1(
        .clk(clk),
        .reset(reset),
        .pcIn(pcIn),
        .pcOut(pcOut)
    );

    readInstructions readInstructions_1(
        .memAddress(pcOut),
        .instruction(instruction)
    );

    instructionDivision instructionDivision_1(
        .instruction(instruction),
        .opcode(opcode),
        .funct3(funct3),
        .funct7(funct7),
        .rd(rd),
        .rs1(rs1),
        .rs2(rs2)
    );

    registers registers_1(
        .regwrite(regwrite),
        .readRegister1(rs1),
        .readRegister2(rs2),
        .writeRegister(rd),
        .writeData(writeData),
        .readData1(readData1),
        .readData2(readData2)
    );

    control control_1(
        .instruction(opcode),
        .branch(branch),
        .memRead(memRead),
        .memtoReg(memtoReg),
        .aluOp(aluOp),
        .memWrite(memWrite),
        .aluSrc(aluSrc),
        .regwrite(regwrite)
    );

    immGen immGen_1(
        .instruction(instruction),
        .extImmediate(extImmediate)
    );

    aluControle aluControle_1(
        .funct7(funct7),
        .funct3(funct3),
        .aluOp(aluOp),
        .aluOut(aluOut)
    );

    muxreg muxreg_1(
        .aluSrc(aluSrc),
        .readData2(readData2),
        .saidaImmGen(extImmediate),
        .saida(saidaMuxreg)
    );

    muxmem muxmem_1(
        .memtoReg(memtoReg),
        .readData(readData),
        .aluResult(aluResult),
        .writeData(writeData)
    );

    muxbranch muxbranch_1(
        .add4Out(add4Out),
        .addSumOut(addSumOut),
        .branch(branch),
        .aluZero(aluZero),
        .muxBranchOutp(pcIn)
    );

    alu alu_1(
        .readData1(readData1),
        .saidaMusReg(saidaMuxreg),
        .aluControlOut(aluOut)
        .zero(aluZero),
        .aluResult(aluResult)
    );

    dataMemory dataMemory_1(
        .memWrite(memWrite),
        .address(aluResult),
        .writeData(readData2),
        .readData(readData),
        .memRead(memRead)
    );

    add4 add4_1(
        .pcOut(pcOut),
        .add4Out(add4Out)
    );

    addSum addSum_1(
        .pcOut(pcOut),
        .immediate(extImmediate),
        .addSumOut(addSumOut)
    );

endmodule