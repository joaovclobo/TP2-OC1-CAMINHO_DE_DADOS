module controle (
    input wire [6:0]instruction,
    output reg branch,
    output reg memRead,
    output reg memtoReg,
    output reg [1:0]aluOp,
    output reg memWrite,
    output reg aluSrc,
    output reg regWrite
    );

    always @(instruction) begin
        case (instruction)
             7'b0110011: begin // Tipo-R
                branch = 0;
                memRead = 0;
                memtoReg = 0;
                memWrite = 0;
                aluSrc = 0;
                regWrite = 1;
                aluOp = 2'b10;  
            end
            7'b0000011: begin // lw
                branch = 0;
                memRead = 1;
                memtoReg = 1;
                memWrite = 0;
                aluSrc = 1;
                regWrite = 1;
                aluOp = 2'b00; // lw e sw
            end
            7'b0100011: begin // sw
                branch = 0;
                memRead = 0;
                memtoReg = 0;
                memWrite = 1;
                aluSrc = 1;
                regWrite = 0;
                aluOp = 2'b00; // lw e sw
            end
            7'b1100111: begin // BRANCH
                branch = 1;
                memRead = 0;
                memtoReg = 0;
                memWrite = 0;
                aluSrc = 0;
                regWrite = 0;
                aluOp = 2'b01; // lw e sw
            end
        endcase
    end
endmodule
