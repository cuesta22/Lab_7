module tb_Lab_7();
reg clk;
reg [1:0] ps;
reg reset;
reg [31:0] PC_in;
wire [4:0] rd;
wire [4:0] rs1;
wire [4:0] rs2;
wire [31:0] A;
top uut(clk, reset, rd,  rs1, rs2,ps, PC_in);
initial begin
	reset <= 1;
	#10 clk <= 0;
#10 clk <= 1;
	PC_in <= 0;
#10 reset <= 0;
#10  ps <= 0;
#10 clk <= 0;
#10 clk <= 1;

#10 clk <= 0;
#10 clk <= 1;


#10 clk <= 0;
#10 clk <= 1;


#10 clk <= 0;
#10 clk <= 1;


#10 clk <= 0;
#10 clk <= 1;


#10 clk <= 0;
#10 clk <= 1;


#10 clk <= 0;
#10 clk <= 1;


#10 clk <= 0;
#10 clk <= 1;


#10 clk <= 0;
#10 clk <= 1;


#10 clk <= 0;
#10 clk <= 1;


#10 clk <= 0;
#10 clk <= 1;


#10 clk <= 0;
#10 clk <= 1;


#10 clk <= 0;
#10 clk <= 1;


#10 clk <= 0;
#10 clk <= 1;


#10 clk <= 0;
#10 clk <= 1;


#10 clk <= 0;
#10 clk <= 1;

#10 clk <= 0;
#10 clk <= 1;




end
assign A = uut.PC_out;
endmodule 