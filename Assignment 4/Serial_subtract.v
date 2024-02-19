module Serial_subtract(input [3:0]a,b,input clk,sc,output reg [3:0]o);
reg [3:0]sa,sb;
reg x,y,z,c;
reg angate;
integer i;
always@(posedge clk,posedge sc)
begin
if(clk)
begin
sa=a;
sb=b;
angate=clk&sc;
for(i=0;i<4;i=i+1)
begin
x=sa[i];
y=sb[i];
z=dff(c,angate);
{c,o[i]}=fs(x,y,z);
end
end
end
function dff(input d,clk);
begin
if(clk)
dff=d;
else
dff=1'b0;
end
endfunction
function [1:0]fs(input x,y,z);
fs=x-y-z;
endfunction
endmodule
