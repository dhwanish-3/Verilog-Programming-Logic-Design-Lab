module decoder_tb;
wire [7:0]out;
reg en;
reg [0:2]in;
integer i;
decoder dut(in,en,out);
initial begin  
$monitor("en=%b, in=%d, out=%b",en,in,out);
for (i=0;i<16;i=i+1) 
begin
{en,in}=i;
#10;
end
end
endmodule
