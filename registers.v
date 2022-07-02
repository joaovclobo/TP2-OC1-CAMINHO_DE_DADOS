module registers (
    input wire regwrite,
    input wire [4:0] readRegister1,
    input wire [4:0] readRegister1,
    input wire [4:0] writeRegister,
    input wire [31:0] writeData,
    output reg [31:0] readData1,
    output reg [31:0] readData2,
);
    reg [31:0] memoria [31:0];
    if(regwrite == 1'b1) begin
        memoria[writeRegister] = writeData;
    end
    readData1 = memoria[readRegister1];
    readData2 = memoria[readRegister1];
endmodule