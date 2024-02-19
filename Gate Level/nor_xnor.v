module nor_xnor(output e,input c,d);
wire m,n,s,t,p;
nor g1(m,c);
nor g2(n,d);
nor g3(s,m,n);
nor g4(t,c,d);
nor g5(p,s,t);
nor out(e,p);
endmodule