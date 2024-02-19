module bool(output f,input a,b,c);
wire a1,b1,f11,f1,f2,f3;
not n1(a1,a);
not n2(b1,b);
and g1(f1,a1,b);
not n3(f11,f1);
and g2(f2,b,c);
and g3(f3,a1,b1);
or out(f,f11,f2,f3);
endmodule