module tb;
wire [0:3]s;
reg [0:3]a;
integer i;
excess dut(a,s);
initial begin
for(i=0;i<16;i=i+1)
begin
a=i;
#20;
end
end
endmodule
