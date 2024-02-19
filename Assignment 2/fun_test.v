module fun_test;
wire f;
reg w,x,y,z;
integer i;
fun inst(w,x,y,z,f);
initial begin
for(i=0;i<16;i=i+1)
begin
{w,x,y,z}=i;
#20;
end
end
endmodule
