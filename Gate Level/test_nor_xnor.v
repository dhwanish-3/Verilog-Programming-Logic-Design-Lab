module test_nor_xnor;
wire e;
reg c,d;
nand_xor rohit(.c(c),.d(d),.e(e));
integer i;
initial begin
c=0;d=0;
for(i=1;i<4;i=i+1)
#20 {c,d}=i;
end
endmodule