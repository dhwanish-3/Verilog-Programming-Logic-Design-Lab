//testbench

module sign_multiply_test;
reg [4:0]a,b;
reg clk;
wire [7:0]y;
wire sign;
sign_multiply instakill(a,b,clk,y,sign);
initial begin
clk=1'b0;
repeat(10)
begin
b=$random();
a=$random();
#80;
$monitor($time,"  sign of a=%b a=%d , sign of b=%b b=%d ,sign of y is %b , magnitude of y=%d",a[4],a[3:0],b[4],b[3:0],sign,y);
end
end
initial
begin
clk=1'b0;
repeat(80)
begin
clk=~clk;
#10;
end
end
endmodule
