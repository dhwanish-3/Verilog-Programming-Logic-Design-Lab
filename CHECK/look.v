module look(input [3:0]a,b,input cin,output [3:0]s,output cout);
wire [3:0]p,g;
wire j,k,l,m;
wire [4:0]c;
or f1(c[0],cin);
xor g1(p[0],a[0],b[0]);
and g2(g[0],a[0],b[0]);
xor g3(s[0],p[0],c[0]);
and g4(j,p[0],c[0]);
or g5(c[1],j,g[0]);

xor g6(p[1],a[1],b[1]);
and g7(g[1],a[1],b[1]);
xor g8(s[1],p[1],c[1]);
and g9(k,p[1],c[1]);
or g10(c[2],k,g[1]);

xor g11(p[2],a[2],b[2]);
and g12(g[2],a[2],b[2]);
xor g13(s[2],p[2],c[2]);
and g14(l,p[2],c[2]);
or g15(c[3],l,g[2]);

xor g16(p[3],a[3],b[3]);
and g17(g[3],a[3],b[3]);
xor g18(s[3],p[3],c[3]);
and g19(m,p[3],c[3]);
or g20(c[4],m,g[3]);

or f2(cout,c[4]);
endmodule
