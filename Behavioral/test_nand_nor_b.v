module test_nand_nor_b;
reg a;
wire o;
initial
begin
a=0;
#50 a=1;
end
nand_not_b inst(.o(o),.a(a));
endmodule
