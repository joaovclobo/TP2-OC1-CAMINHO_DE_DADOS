module addSum(
    input wire [31:0] pcOut,
    input wire [31:0] immediate,
    output reg [31:0] addSumOut
);
    always @* begin
        addSumOut <= pcOut + immediate;
    end
endmodule
