module test_nor_1;
reg a;
wire o;
initial
begin
a=0;
#50 a=1;
end
nor_1 inst(.o(o),.a(a));
endmodule
