module regfile_test;
wire [31:0]q;
reg [31:0]d;
reg clk,reset;
reg8 jith(d,reset,clk,q);
integer i;
initial begin
for(i=0;i<4294967296;i=i+1)
begin
{reset,clk,d}=i;
#10;
end
end
endmodule
