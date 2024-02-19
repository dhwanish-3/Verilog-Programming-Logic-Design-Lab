module test_full_adder_b;
reg [3:0]a,b;
reg c;
wire [3:0]s;
wire ca;
integer i;
full_adder_bit uut(.a(a),.b(b),.c(c),.s(s),.cout(ca));
initial begin
for(i=0;i<512;i=i+1)
begin
{c,a,b}=i;
#20;
end
end
endmodule
