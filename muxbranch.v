module muxBranch(
    input wire [31:0] add4,
    input wire [31:0] addSum,
    input wire branch,
    input wire aluResutZero,
    output reg [31:0] muxBranchOutp;
);
    wire resutado;
    resutado = branch & aluResult;

    always @* begin
        if (resutado == 0) begin
            muxBranchOutp = add4;
        end
        if (resutado == 1) begin
            muxBranchOutp = addSum;
        end
    end
endmodule