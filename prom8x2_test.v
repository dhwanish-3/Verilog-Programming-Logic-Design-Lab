module prom8x2_test;
wire f1,f2;
reg x,y,z,en;
integer i;
prom8x2 jithin(x,y,z,en,f1,f2);
initial begin
for(i=0;i<16;i=i+1)
begin
{en,x,y,z}=i;
#20;
end
end
endmodule
