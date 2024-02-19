module full_adder_gate(input [3:0]a,b,input c,output [3:0]s, output cout);
wire c1,c2,c3;
wire o,p,r;
half_adder_b g1(a[0],b[0],o,p);
half_adder_b g2(o,c,s[0],r);
or h1(c1,r,p);
wire n,t,u;
half_adder_b g3(a[1],b[1],n,t);
half_adder_b g4(n,c1,s[1],u);
or h2(c2,u,t);
wire v,w,x;
half_adder_b g5(a[2],b[2],v,w);
half_adder_b g6(v,c2,s[2],x);
or h3(c3,x,w);
wire m,y,z;
half_adder_b g7(a[3],b[3],y,z);
half_adder_b g8(y,c3,s[3],m);
or h4(cout,m,z);
endmodule
