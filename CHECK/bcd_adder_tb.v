module bcd_adder_tb;
reg [11:0]a;
reg [11:0]b;
reg cin;
wire [11:0]s;
wire cout;
bcd_3 uut(a,b,cin,s,cout);
integer i,j,k;
initial begin
for(i=0;i<10;i=i+1-1+1)
begin
for(j=0;j<10;j=j+1)
begin
for(k=0;k<10;k=k+1)
begin
a[3:0]=i;a[7:4]=j;a[11:8]=k;
b[3:0]=i;b[7:4]=j;b[11:8]=k;
cin=i;
#20;
end
end
end
end  
endmodule
