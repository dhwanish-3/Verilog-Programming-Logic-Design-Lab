module decoder_test;
wire [15:0]out;
reg [3:0]in;
integer i;
decoder4to16 dut(in,out);
initial begin 
$monitor("in=%d, out=%b",in,out);
for (i=0;i<16;i=i+1) 
begin
in=i;
#10;
end
end
endmodule