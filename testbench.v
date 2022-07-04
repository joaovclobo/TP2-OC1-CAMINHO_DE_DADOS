`include "dataPath.v"

module testebench;
reg clk;
reg reset;

dataPath uut(.reset(reset), .clk(clk));

always #5 clk = !clk;

initial begin
        $dumpfile("testebench.vcd");
        $dumpvars(0, testebench);
        #0 clk = 1'b1;
        #0 reset = 1'b1;
        
        #50 reset = 1'b0;

        #1000 $stop;
    end
endmodule