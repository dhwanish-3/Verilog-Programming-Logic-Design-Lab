module mux4_test;
wire y;
reg a,b,c,d,en;
reg [1:0]sel;
integer i;
mux4 instant(a,b,c,d,en,sel,y);
initial begin
for(i=0;i<128;i=i+1)
begin
{en,sel,a,b,c,d}=i;
#10;
end
end
endmodule
