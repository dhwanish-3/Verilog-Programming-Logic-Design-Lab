module test_nor_or;
reg a,b;
wire o,f,x,y;
initial
begin
a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
end
nor_3 insuut(.f(o),.x(a),.y(b));
endmodule
