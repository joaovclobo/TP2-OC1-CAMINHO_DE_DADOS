`include "main.v"

all:
	iverilog -o main_tb.vvp main_tb.v
	iverilog -o dataPath_tb.vvp dataPath_tb.v
run:
	vvp main_tb.vvp
	vvp dataPath_tb.vvp 

module main_tb();
    reg reset;
    reg clk;
    main main_tb(reset, clk);
    integer i;
    always begin
        #1 clk = !clk;
        #1 clk = !clk;
        #1 clk = !clk;
        #1 clk = !clk;
        for (i = 0;i < 32 ; i++) begin
            $display("Register [%d]:        %d", i, main_tb.registers_1.registradores[i]);
        end
        $display("\n\n");
    end
    //always #1 clk = !clk;
    initial begin
        $dumpfile("main_tb.vcd");
        $dumpvars(0, main_tb);
        //$monitor("reset: %b clk: %b -> clk: %b",reset, clk, clk);
        clk = 0;
        reset = 1;
        #1 clk = !clk;
        #4
        reset = 0;
        #130 $finish;
    end
endmodule
