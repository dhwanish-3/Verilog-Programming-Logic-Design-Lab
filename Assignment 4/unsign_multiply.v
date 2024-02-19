module unsign_multiply(input [3:0]a,b,input clk,output reg [7:0]y);
reg [3:0]p,q;
reg c;
integer i;
always@(posedge clk)
begin
p=4'b0000;
q=b;
for(i=0;i<4;i=i+1)
begin
if(q[0]){c,p}=add(p,a);            
{c,p,q}=right_shift({c,p,q});
end
y={p,q};
end
function [8:0]right_shift(input [8:0]y);
begin
right_shift=y>>1;
end
endfunction
function [4:0]add(input [3:0]a,b);
begin
add=a+b;
end
endfunction
endmodule
