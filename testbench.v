`include "dataPath.v"

module testebench;
reg clk;
reg reset;
wire [31:0] inp_teste;
wire [31:0] out_saida;



// pc uut (.clk(clk), .reset(reset), .pcIn(inp_teste), .pcOut(out_saida));
// add4 uut2 (.pcIn(inp_teste), .add4(out_saida));
// addSum uut3 (.pcIn(inp_teste), .immediate(imm), .addSum(out_saida));
// readInstructions uut(.memAddress(inp_teste), .instruction(out_saida)); 
// immGen uut (.instruction(inp_teste), .extImmediate(out_saida));
dataPath uut(.reset(reset), .clk(clk));

always #25 clk = !clk;

initial begin
        $dumpfile("testebench.vcd");
        $dumpvars(0, testebench);
        // $monitor("PC: %b - Instrucao: %b", inp_teste, out_saida);
        // $monitor("Clock: %b ", clk);

        #0 clk = 1'b1;
        #0 reset = 1'b1;
        #100 reset = 1'b0;
        // #10 reset = 1'b0;

        // $display("Entrada %b - Saida %b", inp_teste, out_saida);
        // #20 inp_teste = 32'd4;
        // #20 inp_teste = 32'd8;
        // #20 inp_teste = 32'd12;
        // #20 inp_teste = 32'd16;
        // #20 inp_teste = 32'd20;

        #1000 $stop;
    end
    initial begin
        #2000 $finish;
    end
endmodule