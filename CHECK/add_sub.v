module add_sub(input [3:0]a,b,input cin,output reg [3:0]s,output reg cout);
reg t1,t2,t3;
reg t4,t5,t6,t7,t8;
always@(a,b,cin)
begin
t4=b[0]^cin;
t5=b[1]^cin;
t6=b[2]^cin;
t7=b[3]^cin;
{t1,s[0]}=a[0]+t4+cin;
{t2,s[1]}=a[1]+t5+t1;
{t3,s[2]}=a[2]+t6+t2;
{cout,s[3]}=a[3]+t7+t3;
end
endmodule
