module full_adder_d(input [3:0]a,b,input c,output [3:0]s, output cout);
wire c1,c2,c3;
wire m,o,p,r,n,t,u,v,w,x,y,z;
half_adder_d g1(a[0],b[0],o,p);
half_adder_d g2(o,c,s[0],r);
assign c1=r|p;
half_adder_d g3(a[1],b[1],n,t);
half_adder_d g4(n,c1,s[1],u);
assign c2=u|t;
half_adder_d g5(a[2],b[2],v,w);
half_adder_d g6(v,c2,s[2],x);
assign c3=x|w;
half_adder_d g7(a[3],b[3],y,z);
half_adder_d g8(y,c3,s[3],m);
assign cout=m|z;
endmodule
