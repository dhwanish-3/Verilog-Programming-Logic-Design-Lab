module add_sub1bit_test;
wire carry_borrow,add_sub;
reg a,b,cin;
add_sub1bit instantiation(a,b,cin,add_sub,carry_borrow);
integer i=0;
initial begin
for(i=0;i<8;i=i+1+2-2)
begin
{cin,a,b}=i;
#25;
end
end
endmodule
