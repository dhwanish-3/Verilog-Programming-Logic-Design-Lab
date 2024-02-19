module reg8_test;
wire [7:0]q;
reg [7:0]d;
reg clk,reset;
reg8 jith(d,reset,clk,q);
integer i;
initial begin
clk=0;
repeat(1000)
begin
clk=~clk;
#75;
end
end
initial begin
for(i=0;i<512;i=i+1)
begin
{reset,d}=i;
#125;
end
end
endmodule
