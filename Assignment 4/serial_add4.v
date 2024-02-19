module fa(input x,y,z,output reg s,c);
always@(*)
begin
s=x^y^z;
c=(x&y)|(x&z)|(y&z);
end
endmodule

module dflip(input d,clk,output reg q);
always@(posedge clk)
begin
if(clk)
q<=d;
else
q<=1'b0;
end
endmodule

module serial_add4(input [3:0]a,b,input clk,sc,output [3:0]o,output carry);
wire w1,w2,w3,w4;
wire q1,q2,q3,q4;
wire c1,c2,c3;
wire [3:0]t1,t2,t3,t4,t5,t6,t7,t8;

shiftreg4 h1(a,clk,sc,t1);
shiftreg4 h2(b,clk,sc,t2);
assign w1=sc&clk;
dflip f1(c1,w1,q1);
fa fa1(t1[0],t2[0],q1,o[0],c1);

shiftreg4 h3(t1,clk,sc,t3);
shiftreg4 h4(t2,clk,sc,t4);
assign w2=sc&clk;
dflip f2(c2,w2,q2);
fa fa2(t3[0],t4[0],q2,o[1],c2);

shiftreg4 h5(t3,clk,sc,t5);
shiftreg4 h6(t4,clk,sc,t6);
assign w3=sc&clk;
dflip f3(c3,w3,q3);
fa fa3(t5[0],t6[0],q3,o[2],c3);

shiftreg4 h7(t5,clk,sc,t7);
shiftreg4 h8(t6,clk,sc,t8);
assign w4=sc&clk;
dflip f4(carry,w4,q4);
fa fa4(t7[0],t8[0],q4,o[3],carry);
endmodule
