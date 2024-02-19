module fa_decoded_test;
wire sum,carry;
reg [2:0]in;
integer i;
fa_decoded uut(in,sum,carry);
initial begin
for(i=0;i<8;i=i+1+0)
begin
in=i;
#10;
end
end
endmodule
