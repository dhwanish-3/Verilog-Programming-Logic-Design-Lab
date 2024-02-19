module mux1(o,a,b,c,d,s); 
input [1:0]s; 
input [1:0]a,b,c,d; 
output [1:0]o; 
assign o=(~s[0]&~s[1]&a)|(~s[1]&s[0]&b)|(s[1]&~s[0]&c)|(s[1]&s[0]&d); 
endmodule 

module df(input d,s,w,s2,output q1); 
wire r,s1,q2,q3; 
assign s1=~(d&s&w&s2); 
assign r=~(~(d)&s&w&s2); 
assign q3=~(s1&q2);
assign q2=~(r&q1); 
assign q1=q3&s&~(w); 
endmodule 

module sram(d,s,s1,w,o); 
input [1:0]d; 
input s1,w; 
input [1:0]s; 
output [1:0]o; 
wire [1:0]o1,o2,o3,o4; 
wire c1,c2,c3,c4; 
assign c1=(~s[0]&~s[1]); 
assign c2=(~s[1]&s[0]); 
assign c3=(s[1]&~s[0]); 
assign c4=(s[1]&s[0]); 
df r1(d[0],s1,w,c1,o1[0]); 
df r2(d[1],~s1,w,c1,o1[1]); 
df r3(d[0],s1,w,c2,o2[0]); 
df r4(d[1],~s1,w,c2,o2[1]); 
df r5(d[0],s1,w,c3,o3[0]); 
df r6(d[1],~s1,w,c3,o3[1]); 
df r7(d[0],s1,w,c4,o4[0]); 
df r8(d[1],~s1,w,c4,o4[1]); 
mux1 m1(o,o1,o2,o3,o4,s); 
endmodule 
