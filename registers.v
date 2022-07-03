module registers (
    input clk,
    input reset, 
    input wire regWrite,
    input wire [4:0] readRegister1,
    input wire [4:0] readRegister1,
    input wire [4:0] writeRegister,
    input wire [31:0] writeData,
    output reg [31:0] readData1,
    output reg [31:0] readData2,
);
    reg [31:0] registradores [31:0];
    integer i;
    
    always @(*) begin
        if (reset) begin // vai iniciar todos os 32 registradores com um valor
            registradores[0] <= 32'b0; // O registrador 0 pode receber somente o zero
            registradores[1] <= 32'd1;
            registradores[2] <= 32'd2;
            registradores[3] <= 32'd3;
            registradores[4] <= 32'd4;
            registradores[5] <= 32'd5;
            registradores[6] <= 32'd6;
            registradores[7] <= 32'd7;
            registradores[8] <= 32'd8;
            registradores[9] <= 32'd9;
            registradores[10] <= 32'd10;
            registradores[11] <= 32'd11;
            registradores[12] <= 32'd12;
            registradores[13] <= 32'd13;
            registradores[14] <= 32'd14;
            registradores[15] <= 32'd15;
            registradores[16] <= 32'd16;
            registradores[17] <= 32'd17;
            registradores[18] <= 32'd18;
            registradores[19] <= 32'd19;
            registradores[20] <= 32'd20;
            registradores[21] <= 32'd21;
            registradores[22] <= 32'd22;
            registradores[23] <= 32'd23;
            registradores[24] <= 32'd24;
            registradores[25] <= 32'd25;
            registradores[26] <= 32'd26;
            registradores[27] <= 32'd27;
            registradores[28] <= 32'd28;
            registradores[29] <= 32'd29;
            registradores[30] <= 32'd30;
            registradores[31] <= 32'd32;
        end
        else begin
            if(regWrite == 1'b1) begin
                registradores[writeRegister] = writeData;
            end

            else begin
                assign readData1 = registradores[readRegister1];
                assign readData2 = registradores[readRegister1];
            end
        end
    end
endmodule