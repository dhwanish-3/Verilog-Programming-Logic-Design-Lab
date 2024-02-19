module full_subtractor_test;
wire diff,borrow;
reg a,b,c;
integer i;
full_subtractor inst(a,b,c,diff,borrow);
initial begin
for(i=0;i<8;i=i+1)
begin
{a,b,c}=i;
#20;
end
end
endmodule
