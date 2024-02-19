//testbench

module unsign_multiply_test;
reg [3:0]a,b;
reg clk;
wire [7:0]y;
unsign_multiply instantdeath(a,b,clk,y);
initial begin
repeat(10)
begin
b=$random();
a=$random();
#80;
$monitor($time,"  a=%d , b=%d , y=%d",a,b,y);
end
end
initial begin
clk=1'b0;
repeat(80)
begin
clk=~clk;
#10;
end
end
endmodule
