module pal_test;
wire f1,f2,f3;
reg a,b,c,d;
integer i;
pal habeebs(a,b,c,d,f1,f2,f3);
initial begin
for(i=0;i<16;i=i+1)
begin
{a,b,c,d}=i;
#10;
end
end
endmodule
