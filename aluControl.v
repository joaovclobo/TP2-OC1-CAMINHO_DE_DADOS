module aluControl(
    input wire [6:0] funct7,
    input wire [2:0] funct3,
    input wire [1:0] aluOp,
    output reg [3:0] aluControlOut
);
    always @(aluOp | funct3 | funct7) begin
        case (aluOp)
            2'b00: begin
                if (funct3 == 3'b010) begin
                    aluControlOut = 4'b0010;
                end
            end
            2'b01: begin
                if(funct3 == 3'b000) begin
                    aluControlOut = 4'b0110;
                end
            end
            2'b10: begin
                if (funct3 == 3'b000 && funct7 == 7'b0000000) begin
                    aluControlOut = 4'b0010;  // add
                end
                if (funct3 == 3'b000 && funct7 == 7'b0100000) begin
                    aluControlOut = 4'b0110;  // sub
                end
                if (funct3 == 3'b111 && funct7 == 7'b0000000) begin
                    aluControlOut = 4'b0000;   // and
                end
                if (funct3 == 3'b110 && funct7 == 7'b0000000) begin
                    aluControlOut = 4'b0001;  // or
                end
            end
        endcase
    end
endmodule