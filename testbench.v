module testebench;
reg clk;
reg reset;
reg [31:0] imm;
reg [31:0] inp_teste;
wire [31:0] out_saida;



// pc uut (.clk(clk), .reset(reset), .pcIn(inp_teste), .pcOut(out_saida));
// add4 uut2 (.pcIn(inp_teste), .add4(out_saida));
// addSum uut3 (.pcIn(inp_teste), .immediate(imm), .addSum(out_saida));
// readInstructions uut(.memAddress(inp_teste), .instruction(out_saida)); 
// immGen uut (.instruction(inp_teste), .extImmediate(out_saida));
dataPath uut(.reset(reset), .clk(clk));

always #1500 clk = !clk;

initial begin
        $dumpfile("testebench.vcd");
        $dumpvars(0, testebench);
        // $monitor("Entrada: %b - Saida: %b", inp_teste, out_saida);
        
        #0 reset = 1'b0;
        #0 imm = 32'd15;
        #5 inp_teste = 32'b00001111000001010010010010000011;
        
        $display("Entrada %b - Saida %b", inp_teste, out_saida);
        // #20 inp_teste = 32'd4;
        // #20 inp_teste = 32'd8;
        // #20 inp_teste = 32'd12;
        // #20 inp_teste = 32'd16;
        // #20 inp_teste = 32'd20;

        #10 $stop;
        $finish;
    end
endmodule
