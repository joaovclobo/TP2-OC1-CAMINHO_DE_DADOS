module readInstructions(
    input [31:0] memAddress,
    output [31:0] instruction
);
    parameter numInstructions = 12;
    reg [31:0] instructionMem [0:numInstructions-1];
    integer i;

    initial begin
        $readmemb("instructions.txt", instructionMem, 0, numInstructions-1);
        $display("\n------------------------------ Instruction Mememory Sate ------------------------------\n");
        for (i = 0; i < numInstructions; i++) $display("InstructionMem: %d | Value: %b", i, instructionMem[i]);
    end

    assign instruction = instructionMem[memAddress / 4];

endmodule
