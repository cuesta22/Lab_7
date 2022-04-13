module top(clk,reset, rd,  rs1, rs2,ps, PC_in);
input clk;
input reset;
input [1:0] ps;
input [31:0] PC_in;
wire [31:0] PC_out;
wire [31:0] out;
output [4:0] rd;
output [4:0] rs1;
output [4:0] rs2;
programCounter uut(reset, clk, PC_in, PC_out, ps);
instr_Decoder utt(out, rd, rs1, rs2);
ROM uutt(out,PC_out [7:0] , clk);
endmodule 