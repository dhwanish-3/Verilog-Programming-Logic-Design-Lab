module alu_test;
wire [3:0]out;
reg [3:0]a,b;
reg [2:0]sel;
integer i;
alu first(a,b,sel,out);
initial begin
for(i=0;i<2048;i=i+1+0)
begin
{sel,a,b}=i;
#10;
end
end
endmodule
