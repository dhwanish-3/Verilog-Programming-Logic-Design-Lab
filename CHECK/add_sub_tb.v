module add_sub_tb;
reg [3:0]a,b;
reg cin;
wire [3:0]s;
wire cout;
integer i;
add_sub insta(a,b,cin,s,cout);
initial begin
for(i=0;i<512;i=i+1)
begin
{cin,a,b}=i;
#15;
end
end
endmodule
