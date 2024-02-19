module binaryToGray_test;
wire [15:0]out;
reg [15:0]in;
integer j;
GrayToBinary instat(in,out);
initial begin
for(j=0;j<65536;j=j+1)
begin
in=j;
#5;
end
end
endmodule
