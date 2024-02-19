module bool_tb;
reg a,b,c;
integer i;
wire f;
bool dhw(f,a,b,c);
initial
begin
a=0;b=0;c=0;
for(i=1;i<8;i=i+1)
#20 {a,b,c}=i;
end
endmodule
