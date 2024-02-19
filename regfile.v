module mux(input [7:0]a,b,c,d,input [1:0]sel,output [7:0]out);
assign out=sel[1]?(sel[0]?d:c):(sel[0]?b:a);
endmodule

module reg8(input [7:0]d,input reset,clk,output reg [7:0]q);
always@(posedge reset or posedge clk)
begin
if(reset)
q<=8'b00000000;
else
q<=d;
end
endmodule

module regfile(input [7:0]write,input [1:0]sel,input reset,clk,output [7:0]q);
wire [7:0]r1,r2,r3,r4;
wire c1,c2,c3,c4; 
assign c1=(~sel[0]&~sel[1]&clk); 
assign c2=(~sel[1]&sel[0]&clk); 
assign c3=(sel[1]&~sel[0]&clk); 
assign c4=(sel[1]&sel[0]&clk); 
reg8 h1(write,reset,clk,r1);
reg8 h2(write,reset,clk,r2);
reg8 h3(write,reset,clk,r3);
reg8 h4(write,reset,clk,r4);
mux m1(r1,r2,r3,r4,sel,q);
endmodule
