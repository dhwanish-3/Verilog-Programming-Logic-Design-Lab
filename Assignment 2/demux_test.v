module demux_test;
wire [3:0]y;
reg d;
reg [1:0]s;
integer i;
demux4 uut(d,s,y);
task test;
output d;
input i;
output [1:0]s;
begin
for(i=0;i<8;i=i+1)
begin
{d,s}=i;
#20;
end
//s=i;
//{d,s}=i;
end
endtask
initial begin
test(d,i,s);
end
endmodule
