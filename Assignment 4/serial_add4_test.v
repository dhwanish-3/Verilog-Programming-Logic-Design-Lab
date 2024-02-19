module serial_add4_test;
wire [3:0]o;
wire carry;
reg [3:0]a,b;
reg clk,sc;
integer i;
serial_add4 nah(a,b,clk,sc,o,carry);
initial begin
clk=0;
sc=0;
repeat(1500)
#14 clk=~clk;
end
initial begin
for(i=0;i<512;i=i+1)
begin
{a,b}=i;
#45;
end
end
endmodule
