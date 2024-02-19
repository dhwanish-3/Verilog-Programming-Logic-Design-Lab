module df(input d,clk,output reg q1,q2); 
always@(posedge clk) 
begin 
q1=d; 
q2=~(q1); 
end 
endmodule

 
module reg8(d,clk,o); 
input[7:0]d; 
input clk; 
output[7:0]o; 
df d1(d[0],clk,o[0]); 
df d2(d[1],clk,o[1]); 
df d3(d[2],clk,o[2]); 
df d4(d[3],clk,o[3]); 
df d5(d[4],clk,o[4]); 
df d6(d[5],clk,o[5]); 
df d7(d[6],clk,o[6]); 
df d8(d[7],clk,o[7]); 
endmodule 


module mux(o,a,b,c,d,s); 
input wire[1:0]s; 
input[7:0]a,b,c,d; 
output[7:0]o; 
assign o=(~s[0]&~s[1]&a)|(~s[1]&s[0]&b)|(s[1]&~s[0]&c)|(s[1]&s[0]&d); 
endmodule 


module regfile1(d,clk,s,o); 
input[7:0]d; 
input clk; 
input[1:0]s; 
output[7:0]o; 

wire[7:0]o1,o2,o3,o4; 
wire c1,c2,c3,c4; 
assign c1=(~s[0]&~s[1]&clk); 
assign c2=(~s[1]&s[0]&clk); 
assign c3=(s[1]&~s[0]&clk); 
assign c4=(s[1]&s[0]&clk); 
reg8 r1(d,c1,o1); 
reg8 r2(d,c2,o2); 
reg8 r3(d,c3,o3); 
reg8 r4(d,c4,o4); 
mux m1(o,o1,o2,o3,o4,s); 
endmodule
