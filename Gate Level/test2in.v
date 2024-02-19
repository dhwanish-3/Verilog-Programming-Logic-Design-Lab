module test2in;
reg a2,b2;
wire o2;
nor_gate uut(.o2(o2),.a2(a2),.b2(b2));
initial
begin
a2=0;b2=0;
#10 a2=0;b2=1;
#10 a2=1;b2=0;
#10 a2=1;b2=1;
end
endmodule
