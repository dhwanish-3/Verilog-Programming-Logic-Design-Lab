module multiply4bits_test;
wire [7:0]product;
reg [3:0]in1,in2;
multiply4bits instat(in1,in2,product);
integer i;
initial begin
for(i=0;i<256;i=i+1)
begin
{in1,in2}=i;
#10;
end
end
endmodule
