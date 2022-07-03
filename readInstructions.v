module readInstructions(
    input [31:0] memAddress,
    output [31:0] instruction
);
    parameter numInstructions = 3;
    reg [31:0] instructionMem [0:numInstructions-1];

    initial begin
        $readmemb("instructions.txt", instructionMem, 0, numInstructions-1);
    end

    assign instruction = instructionMem[memAddress / 4];
	// always @* begin
	// 	$display("Instrucao %b",instruction);
	// end

endmodule
