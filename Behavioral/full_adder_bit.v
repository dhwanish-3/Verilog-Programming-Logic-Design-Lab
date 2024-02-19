
module full_adder_bit(input [3:0]a,b,input c,output reg [3:0]s, output reg cout);
reg c1,c2,c3;
reg m,o,p,r,n,t,u,v,w,x,y,z;
always@(a,b,c)
begin
//half_adder_d g1(a[0],b[0],o,p);
//half_adder_d g2(o,c,s[0],r);
o=a[0]^b[0];
p=a[0]&b[0];
s[0]=o^c;
r=o&c;
c1=r|p;
//half_adder_d g3(a[1],b[1],n,t);
//half_adder_d g4(n,c1,s[1],u);
n=a[1]^b[1];
t=a[1]&b[1];
s[1]=n^c1;
u=n&c1;
c2=u|t;
//half_adder_d g5(a[2],b[2],v,w);
//half_adder_d g6(v,c2,s[2],x);
v=a[2]^b[2];
w=a[2]&b[2];
s[2]=v^c2;
x=v&c2;
c3=x|w;
//half_adder_d g7(a[3],b[3],y,z);
//half_adder_d g8(y,c3,s[3],m);
y=a[3]^b[3];
z=a[3]&b[3];
s[3]=y^c3;
m=y&c3;
cout=m|z;
end
endmodule
