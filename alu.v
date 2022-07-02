module alu (
    input wire [31:0] readData1,
    input wire [31:0] saidaMusReg,
    input wire [3:0] aluControlOut,
    output wire zero;
    output wire [31:0] aluResut;

    assign zero <= 1'b0;
    always @(aluControle) begin
        case (aluControle)
            4'b0000: begin
                aluResult <= readData1 & saidaMusReg;
            end
            4'b0001: begin
                aluResult <= readData1 | saidaMusReg;
            end
            4'b0010: begin
                aluResult <= readData1 + saidaMusReg;
            end
            4'b0010: begin
                aluResult <= readData1 - saidaMusReg;
            end
            default: 
        endcase
    end
);
    
endmodule