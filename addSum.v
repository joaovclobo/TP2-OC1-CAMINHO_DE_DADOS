module addSum(
    input wire [31:0] pcIn,
    input wire [31:0] immediate,
    output reg [31:0] addSum
);
    always @* begin
        addSum <= pcIn + immediate;
    end
endmodule
