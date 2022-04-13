module instr_Decoder(in, rd, rs1, rs2);
input wire [31:0] in;
output reg [4:0] rd;
output reg [4:0] rs1;
output reg [4:0] rs2;

always @ (in) begin
case(in)
32'h00f507b3: begin
rd =5'b01111;
rs1 =5'b01010;
rs2=5'b01111;
end
default: begin
rd=5'b00000;
rs1=5'b00000;
rs2=5'b00000;
end
endcase
end
endmodule 