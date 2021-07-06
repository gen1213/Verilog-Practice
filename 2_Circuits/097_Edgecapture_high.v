module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out
);
    
   reg [31:0]in_r;
    always@(posedge clk)begin
        in_r<=in;
    	if(reset)
            out<=0;
        else
            out<=(~in&in_r)|out;
    end

endmodule
