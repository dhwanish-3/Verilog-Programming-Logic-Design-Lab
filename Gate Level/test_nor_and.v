module test_nor_and;
reg a,b;
wire o;
initial
begin
a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
end
nor_2 in(.o(o),.a(a),.b(b));
endmodule
