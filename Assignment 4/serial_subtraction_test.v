//testbench

module serial_subtraction_test;
wire [3:0]D;
wire bout;
reg [3:0]a,b;
reg clk,shift,clr;
serial_subtraction uutshit(a,b,clk,shift,clr,D,bout);
initial begin
clk=1'b0;
shift=1'b1;
clr=1;
#10 clr=0;
end
initial begin
repeat(10)
begin 
clk=~clk;
#20;
end
end
initial begin
a=$random();
b=$random();
#85;
end
initial begin
repeat(3)
begin
#55 clr=1;
#20 clr=0;
#15;
end
end
endmodule
