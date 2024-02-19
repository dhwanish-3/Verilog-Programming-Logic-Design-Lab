module comp_tb;
wire greater_than,less_than,equal_to;
reg [3:0]a,b;
integer i;
comp_four instant(a,b,greater_than,less_than,equal_to);
initial begin
for(i=0;i<256;i=i+1)
begin
{a,b}=i;
#10;
end
end
endmodule
