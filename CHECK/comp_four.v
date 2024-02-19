module comp_four(input [3:0]a,b,output greater_than,less_than,equal_to);
wire e0,e1,e2,e3;
wire g1,g2,g3,g4;
wire l1,l2,l3,l4;
xnor x1(e0,a[0],b[0]);
xnor x2(e1,a[1],b[1]);
xnor x3(e2,a[2],b[2]);
xnor x4(e3,a[3],b[3]);
and et(equal_to,e0,e1,e2,e3);
and a1(g1,a[3],~b[3]);
and a2(g2,e3,a[2],~b[2]);
and a3(g3,e3,e2,a[1],~b[1]);
and a4(g4,e3,e2,e1,a[0],~b[0]);
or gt(greater_than,g1,g2,g3,g4);
and c1(l1,~a[3],b[3]);
and c2(l2,e3,~a[2],b[2]);
and c3(l3,e3,e2,~a[1],b[1]);
and c4(l4,e3,e2,e1,~a[0],b[0]);
or lt(less_than,l1,l2,l3,l4);
endmodule
