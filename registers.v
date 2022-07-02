module registers (
    input wire regwrite,
    input wire [4:0] readRegister1,
    input wire [4:0] readRegister1,
    input wire [4:0] writeRegister,
    input wire [31:0] writeData,
    output reg [31:0] readData1,
    output reg [31:0] readData2,
);
    reg [31:0] registradores [31:0];
    integer i;
    if (reset) begin // vai iniciar todos os 32 registradores com um valor
        registradores[0] <= 32'b0; // O registrador 0 pode receber somente o zero
        registradores[1] <= 32'b0;
        registradores[2] <= 32'b0;
        registradores[3] <= 32'b0;
        registradores[4] <= 32'b0;
        registradores[5] <= 32'b0;
        registradores[6] <= 32'b0;
        registradores[7] <= 32'b0;
        registradores[8] <= 32'b0;
        registradores[9] <= 32'b0;
        registradores[10] <= 32'b0;
        registradores[11] <= 32'b0;
        registradores[12] <= 32'b0;
        registradores[13] <= 32'b0;
        registradores[14] <= 32'b0;
        registradores[15] <= 32'b0;
        registradores[16] <= 32'b0;
        registradores[17] <= 32'b0;
        registradores[18] <= 32'b0;
        registradores[19] <= 32'b0;
        registradores[20] <= 32'b0;
        registradores[21] <= 32'b0;
        registradores[22] <= 32'b0;
        registradores[23] <= 32'b0;
        registradores[24] <= 32'b0;
        registradores[25] <= 32'b0;
        registradores[26] <= 32'b0;
        registradores[27] <= 32'b0;
        registradores[28] <= 32'b0;
        registradores[29] <= 32'b0;
        registradores[30] <= 32'b0;
        registradores[31] <= 32'b0;
    end
    if(regwrite == 1'b1) begin
        registradores[writeRegister] = writeData;
    end
    assign readData1 = registradores[readRegister1];
    assign readData2 = registradores[readRegister1];
endmodule