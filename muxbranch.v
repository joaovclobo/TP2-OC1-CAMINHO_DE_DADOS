module muxbranch(
    input wire [31:0] add4Out,
    input wire [31:0] addSumOut,
    input wire branch,
    input wire aluZero,
    output reg [31:0] muxBranchOutp
);
    wire resutado;
    // assign resutado = branch & aluZero;
    assign resutado = 1'b0;

    always @* begin
        if (resutado == 0) begin
            muxBranchOutp = add4Out;
        end
        if (resutado == 1) begin
            muxBranchOutp = addSumOut;
        end
    end
endmodule