module programCounter(reset, clk, PC_in, PC_out, ps);

input clk;
input [1:0] ps;
input reset;
input [31:0] PC_in;
output reg[31:0] PC_out;



always @ (posedge clk)
if (reset)
PC_out = 0;
else
case(ps)
2'b00:PC_out = PC_out + 4;
2'b01:PC_out = PC_in + PC_out;
2'b10:PC_out = PC_out;
2'b11:PC_out = PC_in;
endcase
endmodule
