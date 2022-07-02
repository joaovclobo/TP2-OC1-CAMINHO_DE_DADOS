module dataMemory (
    input wire memWrite,
    input wire [31:0] address,
    input wire [31:0] writeData,
    output reg [31:0]readData,
    input wire memRead
);
    reg [31:0] dataMemory[31:0];
    always @* begin
        if(reset) begin
            // eu não sei ainda qual desses tres modos devemos usar
            // para iniciar todos  com 1 ou com outro numero
            dataMemory[0] <= 32'b1;
            dataMemory[1] <= 32'b00000000000000000000000000000001;
            dataMemory[2] <= 1;
            dataMemory[3] <= 32'd3;
            dataMemory[4] <= 32'd4;
            dataMemory[5] <= 32'd5;
            dataMemory[6] <= 32'd6;
            dataMemory[7] <= 32'd7;
            dataMemory[8] <= 32'd8;
            dataMemory[9] <= 32'd9;
            dataMemory[10] <= 32'd10;
            dataMemory[11] <= 32'd11;
            dataMemory[12] <= 32'd12;
            dataMemory[13] <= 32'd13;
            dataMemory[14] <= 32'd14;
            dataMemory[15] <= 32'd15;
            dataMemory[16] <= 32'd16;
            dataMemory[17] <= 32'd17;
            dataMemory[18] <= 32'd18;
            dataMemory[19] <= 32'd19;
            dataMemory[20] <= 32'd20;
            dataMemory[21] <= 32'd21;
            dataMemory[22] <= 32'd22;
            dataMemory[23] <= 32'd23;
            dataMemory[24] <= 32'd24;
            dataMemory[25] <= 32'd25;
            dataMemory[26] <= 32'd26;
            dataMemory[27] <= 32'd27;
            dataMemory[28] <= 32'd28;
            dataMemory[29] <= 32'd29;
            dataMemory[30] <= 32'd30;
            dataMemory[31] <= 32'd31;
        end
        else begin
            if(memWrite) begin
                dataMemory[address] <= writeData;
            end
            if (memRead) begin
                readData <= dataMemory[address];
            end
        end
    end
endmodule