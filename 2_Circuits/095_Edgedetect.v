module top_module (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);
    reg [7:0]in_r;
    always@(posedge clk)begin
        in_r<=in;
        pedge<=in&(~in_r);
    end

endmodule
