module test_nand_and_b;
reg a,b;
wire o;
initial
begin
a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
end
nand_and_b in(.o(o),.a(a),.b(b));
endmodule
