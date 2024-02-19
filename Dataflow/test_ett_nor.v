module test_ett_nor;
wire o;
integer i;
reg [0:7]a;
ett_nand insta1(.a(a),.o(o));
initial begin
for(i=0;i<256;i=i+1)
begin
a=i;
#10;
end
end
endmodule