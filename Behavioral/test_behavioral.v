module test_behavioral;
reg a,b;
wire o;
or_behavioral uut(.o(o),.a(a),.b(b));
initial
begin
a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
end
endmodule
