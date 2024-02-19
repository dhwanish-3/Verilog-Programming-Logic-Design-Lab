module shift_test;
wire [3:0]o;
reg [3:0]i;
reg clk,clr;
shiftreg4 f1(i,clk,clr,o);
initial begin
clk=0;
repeat(3000)
#25 clk=~clk;
end
initial begin
clr=0;
i=4'b1011;
repeat(200)
#154 i=i+4'b0001;
end
endmodule
