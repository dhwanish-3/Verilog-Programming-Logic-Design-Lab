module look_tb;
wire [3:0]s;
wire cout;
reg [3:0]a,b;
reg cin;
integer i;
look dut(a,b,cin,s,cout);
initial begin
for(i=0;i<512;i=i+1)
begin
{cin,a,b}=i;
#20;
end
end
endmodule