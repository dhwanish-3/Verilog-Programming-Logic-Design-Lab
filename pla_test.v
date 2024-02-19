//testbench
module pla_test;
wire f1,f2;
reg a,b,c,d;
integer i;
pla Habeeb(a,b,c,d,f1,f2);
initial begin
for(i=0;i<16;i=i+1)
begin
{a,b,c,d}=i;
#10;
end
end
endmodule
