module alu (
    input wire [31:0] readData1,
    input wire [31:0] saidaMusReg,
    input wire [3:0] aluControlOut,
    output zero,
    output reg [31:0] aluResult
);
    assign zero = 1'b0;
    always @(aluControlOut) begin
        case (aluControlOut)
            4'b0000: begin
                aluResult <= readData1 & saidaMusReg;
            end
            4'b0001: begin
                aluResult <= readData1 | saidaMusReg;
            end
            4'b0010: begin
                aluResult <= readData1 + saidaMusReg;
            end
            4'b0110: begin
                aluResult <= readData1 - saidaMusReg;
            end
        endcase
    end
    
endmodule