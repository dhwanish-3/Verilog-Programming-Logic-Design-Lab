module sign_multiply(input [4:0]a,b,input clk,output reg [7:0]y,output reg sign);
reg [3:0]p,q;
reg c;
integer i;
always@(posedge clk)
begin
p=4'b0000;
q=b[3:0];
for(i=0;i<4;i=i+1)
begin
if(q[0]){c,p}=add(p,a[3:0]);           
{c,p,q}=right_shift({c,p,q});
end
y={p,q};
sign=a[4]^b[4];
end
function [8:0]right_shift(input [8:0]y);
begin
right_shift[7:0]=y[8:1];
right_shift[8]=1'b0;
end
endfunction
function [4:0]add(input [3:0]a,b);
begin
add=a+b;
end
endfunction
endmodule
