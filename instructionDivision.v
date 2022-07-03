module instructionDivision(
    input wire [31:0] instruction,
    output [6:0] opcode, 
    output [2:0] funct3,
    output [6:0] funct7,
    output [4:0] rd,
    output [4:0] rs1,
    output [4:0] rs2
    );

    assign opcode = instruction[6:0];
    assign funct3 = instruction[14:12];
    assign funct7 = instruction[31:25];
    assign rd = instruction[11:7];
    assign rs1 = instruction[19:15];
    assign rs2 = instruction[24:20];

    // always @* begin
	// 	$display("opcode %b | f3: %b | f7: %b | rd: %b, | rs1: %b, | rs2: %b", opcode, funct3, funct7, rd, rs1, rs2);
	// end
    
endmodule