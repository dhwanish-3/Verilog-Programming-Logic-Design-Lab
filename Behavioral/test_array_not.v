module test_array_not;
reg [0:15]a;
wire [0:15]o;
integer i;
array_not_data insta(.o(o),.a(a));
initial begin
for(i=0;i<65535;i=i+1)
begin
a=i;
#10;
end
end
endmodule
