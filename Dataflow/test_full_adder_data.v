module test_full_adder_data;
reg a,b,c;
wire s,ca;
integer i;
full_adder_data uut(.a(a),.b(b),.c(c),.s(s),.ca(ca));
initial begin
for(i=0;i<8;i=i+1)
begin
{a,b,c}=i;
#20;
end
end
endmodule
