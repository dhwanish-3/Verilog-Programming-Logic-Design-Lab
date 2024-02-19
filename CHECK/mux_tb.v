module mux_tb;
wire out;
reg a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p;
reg [0:3]s;
integer x;
mux_16 iut(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,s,out);
initial begin
for(x=0;x<65636;x=x+1)
begin
{a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p}=x;
s=x;
#20;
end
end
endmodule
