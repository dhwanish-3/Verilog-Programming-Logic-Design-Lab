module quadruple_test;
wire [3:0]y;
reg sel;
reg [3:0]a,b;
integer i;
quadruple insta(a,b,sel,y);
initial begin
for(i=0;i<512;i=i+1)
begin
{sel,a,b}=i;
#10;
end
end
endmodule
