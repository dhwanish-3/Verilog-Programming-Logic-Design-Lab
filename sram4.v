module mux2(o,a,b,c,d,s); 
input [1:0]s; 
input [3:0]a,b,c,d; 
output [3:0]o; 
assign o=(~s[0]&~s[1]&a)|(~s[1]&s[0]&b)|(s[1]&~s[0]&c)|(s[1]&s[0]&d); 
endmodule 
 
module  df2(input d,s,w,s2,output q1); 
wire r,s1,q2,q3; 
assign s1=~(d&s&w&s2); 
assign r=~(~(d)&s&w&s2); 
assign q3=~(s1&q2),q2=~(r&q1); 
assign q1=q3&s&~(w); 
endmodule 

module sram4(d,s,s1,w,o); 
input [3:0]d; 
input w; 
input [1:0]s,s1; 
output [3:0]o; 
wire [3:0]o1,o2,o3,o4; 
wire c1,c2,c3,c4,e1,e2,e3,e4; 
assign c1=(~s[0]&~s[1]); 
assign c2=(~s[1]&s[0]); 
assign c3=(s[1]&~s[0]); 
assign c4=(s[1]&s[0]); 
assign e1=(~s1[0]&~s1[1]); 
assign e2=(~s1[1]&s1[0]); 
assign e3=(s1[1]&~s1[0]); 
assign e4=(s1[1]&s1[0]); 
df2 r1(d[0],e1,w,c1,o1[0]); 
df2 r2(d[1],e2,w,c1,o1[1]); 
df2 r3(d[2],e3,w,c1,o1[2]); 
df2 r4(d[3],e4,w,c1,o1[3]); 
df2 r5(d[0],e1,w,c2,o2[0]); 
df2 r6(d[1],e2,w,c2,o2[1]); 
df2 r7(d[2],e3,w,c2,o2[2]); 
df2 r8(d[3],e4,w,c2,o2[3]); 
df2 r9(d[0],e1,w,c3,o3[0]); 
df2 r10(d[1],e2,w,c3,o3[1]); 
df2 r11(d[2],e3,w,c3,o3[2]); 
df2 r12(d[3],e4,w,c3,o3[3]); 
df2 r13(d[0],e1,w,c4,o4[0]); 
df2 r14(d[1],e2,w,c4,o4[1]); 
df2 r15(d[2],e3,w,c4,o4[2]); 
df2 r16(d[3],e4,w,c4,o4[3]); 
mux2 m1(o,o1,o2,o3,o4,s); 
endmodule  
