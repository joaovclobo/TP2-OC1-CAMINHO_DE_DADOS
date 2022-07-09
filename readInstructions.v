module readInstructions(
    input wire clk,
    input wire reset,
    input wire [31:0] memAddress,
    output reg [31:0] instruction
);

    reg [31:0] instructionMem [0:31];
    always @(posedge clk) begin
        if (reset) begin // onde coloca a instrução codificada em
            instructionMem[0] <= 32'b00000000000100000000000100110011;  // add x2, x0, x1       ; x2 = 1
            instructionMem[1] <= 32'b00000000000010100010000110000011;  // lw x3, 0(x20)        ; x3 = 20
            instructionMem[2] <= 32'b00000001010100011000001000110011;  // add x4, x3, x21      ; x4 = 41
            instructionMem[3] <= 32'b01000000111111110000001010110011;  // sub x5, x30, x15     ; x5 = 15
            instructionMem[4] <= 32'b00000001101110110111001100110011;  // and x6, x22, x27     ; x6 = 18
            instructionMem[5] <= 32'b00000000111100110110001110110011;  // or x7, x6, x15       ; x7 = 31
            instructionMem[6] <= 32'b00000000001000001000011001100011;  // beq x1, x2, desvia   ; vai desviar para a instrução que esta na posição 9
            instructionMem[7] <= 32'b00000001111011110000010000110011;  // add x8, x30, x30     ; x8 = 60
            instructionMem[8] <= 32'b01000001111111111000010010110011;  // sub x9, x31, x31     ; x9 = 0
            instructionMem[9] <= 32'b00000001000110111000010100110011;  // add x10, x23, x17    ; x10 = 40
            instructionMem[10] <= 32'b00000000101010000010000000100011; // sw x10, 0(x16)       ; vai escrever no enderec de  x16 mais o imm 40
            instructionMem[11] <= 32'b00000000000000000000000000000000;
            instructionMem[12] <= 32'b00000000000000000000000000000000;
            instructionMem[13] <= 32'b00000000000000000000000000000000;
            instructionMem[14] <= 32'b00000000000000000000000000000000;
            instructionMem[15] <= 32'b00000000000000000000000000000000;
            instructionMem[16] <= 32'b00000000000000000000000000000000;
            instructionMem[17] <= 32'b00000000000000000000000000000000;
            instructionMem[18] <= 32'b00000000000000000000000000000000;
            instructionMem[19] <= 32'b00000000000000000000000000000000;
            instructionMem[20] <= 32'b00000000000000000000000000000000;
            instructionMem[21] <= 32'b00000000000000000000000000000000;
            instructionMem[22] <= 32'b00000000000000000000000000000000;
            instructionMem[23] <= 32'b00000000000000000000000000000000;
            instructionMem[24] <= 32'b00000000000000000000000000000000;
            instructionMem[25] <= 32'b00000000000000000000000000000000;
            instructionMem[26] <= 32'b00000000000000000000000000000000;
            instructionMem[27] <= 32'b00000000000000000000000000000000;
            instructionMem[28] <= 32'b00000000000000000000000000000000;
            instructionMem[29] <= 32'b00000000000000000000000000000000;
            instructionMem[30] <= 32'b00000000000000000000000000000000;
            instructionMem[31] <= 32'b00000000000000000000000000000000;
        end
        /*!!!!!!!!!!!!!!!!!!!!!!!!   Exemplo que está no tp
        if (reset) begin // onde coloca a instrução codificada em
            instructionMem[0] <= 32'b00000000010000000010000010000011; // lw x1, 4(x0)
            instructionMem[1] <= 32'b00000000000000001000000100110011; // add x2, x1, x0
            instructionMem[2] <= 32'b00000000001000001000000010110011; // add x1, x1, x2
            instructionMem[3] <= 32'b00000000001000001000000010110011; // add x1, x1, x2
            instructionMem[4] <= 32'b01000000001000001000000010110011; // sub x1, x1, x2
            instructionMem[5] <= 32'b01000000001000001000000010110011; // sub x1, x1, x2
            instructionMem[6] <= 32'b00000000001000001000011001100011; // beq x1, x2, saida
            instructionMem[7] <= 32'b00000000000100001000000010110011; // add x1, x1, x1
            instructionMem[8] <= 32'b00000000000100000010000000100011; // sw x1, 0(x0)
            instructionMem[9] <= 32'b00000000001000001111000010110011; // and x1, x1, x2
            instructionMem[10] <= 32'b00000000000000001110000010110011;// or x1, x1, x0
            instructionMem[11] <= 32'b00000000000100000010000000100011;// sw x1, 0(x0)
        end*/
        else begin
            instruction = instructionMem[memAddress / 4];
        end
    end
endmodule
