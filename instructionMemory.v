module lerInstrucao (
    input wire [31:0] readAddress,
    output reg [31:0]instruction,
);
    reg [31:0] memoria [0:31];
    // tem fazer alguma coisa que não sei ainda
    /*
    Onde vai colocar as instruçoes em binario
    memoria[1] = 32'b ;
    memoria[1] = 32'b ;
    memoria[1] = 32'b ;
    memoria[1] = 32'b ;
    memoria[1] = 32'b ;
    memoria[1] = 32'b ;
    memoria[1] = 32'b ;
    memoria[1] = 32'b ;
    memoria[1] = 32'b ;
    memoria[1] = 32'b ;
    memoria[1] = 32'b ;
    memoria[1] = 32'b ;
    memoria[1] = 32'b ;
    memoria[1] = 32'b ;
    memoria[1] = 32'b ;
    memoria[1] = 32'b ;
    memoria[1] = 32'b ;
    memoria[1] = 32'b ;
    memoria[1] = 32'b ;
    memoria[1] = 32'b ;
    memoria[1] = 32'b ;
    memoria[1] = 32'b ;
    memoria[1] = 32'b ;
    memoria[1] = 32'b ;
    memoria[1] = 32'b ;
    memoria[1] = 32'b ;
    memoria[1] = 32'b ;
    memoria[1] = 32'b ;
    memoria[1] = 32'b ;
    memoria[1] = 32'b ;
    memoria[1] = 32'b ;
    memoria[1] = 32'b ;
    */
    assign instruction = memoria[readAddress / 4];
endmodule