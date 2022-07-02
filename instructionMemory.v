module lerInstrucao (
    input wire [31:0] readAddress,
    output reg [31:0]instruction,
);
    reg [31:0] instrucoes [0:31];
    // tem fazer alguma coisa que não sei ainda
    /*
    Onde vai colocar as instruçoes em binario
    instrucoes[0] = 32'b ;
    instrucoes[1] = 32'b ;
    instrucoes[2] = 32'b ;
    instrucoes[3] = 32'b ;
    instrucoes[4] = 32'b ;
    instrucoes[5] = 32'b ;
    instrucoes[6] = 32'b ;
    instrucoes[7] = 32'b ;
    instrucoes[8] = 32'b ;
    instrucoes[9] = 32'b ;
    instrucoes[10] = 32'b ;
    instrucoes[11] = 32'b ;
    instrucoes[12] = 32'b ;
    instrucoes[13] = 32'b ;
    instrucoes[14] = 32'b ;
    instrucoes[15] = 32'b ;
    instrucoes[16] = 32'b ;
    instrucoes[17] = 32'b ;
    instrucoes[18] = 32'b ;
    instrucoes[19] = 32'b ;
    instrucoes[20] = 32'b ;
    instrucoes[21] = 32'b ;
    instrucoes[22] = 32'b ;
    instrucoes[23] = 32'b ;
    instrucoes[24] = 32'b ;
    instrucoes[25] = 32'b ;
    instrucoes[26] = 32'b ;
    instrucoes[27] = 32'b ;
    instrucoes[28] = 32'b ;
    instrucoes[29] = 32'b ;
    instrucoes[30] = 32'b ;
    instrucoes[31] = 32'b ;
    */
    assign instruction = instrucoes[readAddress / 4];
endmodule