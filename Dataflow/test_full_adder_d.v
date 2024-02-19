module test_full_adder_d;
wire cout;
wire [3:0]s;
reg c;
integer i;
reg [3:0]a,b;
full_adder_d inst(a,b,c,s,cout);
initial begin
for(i=0;i<512;i=i+1)
begin
{c,a,b}=i;
#20;
end
end
endmodule

