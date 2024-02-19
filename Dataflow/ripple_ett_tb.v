module ripple_ett_tb;
reg [7:0]a,b;
reg cin;
wire [7:0]s;
wire cout;
integer i;
ripple_ett uut(a,b,cin,s,cout);
initial begin
for(i=0;i<65536;i=i+1)
begin
{cin,a,b}=i;
#15;
end
end
endmodule
