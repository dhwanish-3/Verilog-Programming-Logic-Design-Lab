module reg16_test;
wire [15:0]q;
reg [15:0]d;
reg clk,reset;
reg16 jith(d,reset,clk,q);
integer i;
initial begin
clk=0;
repeat(100000)
begin
clk=~clk;
#75;
end
end
initial begin
for(i=0;i<131072;i=i+1)
begin
{reset,d}=i;
#125;
end
end
endmodule
