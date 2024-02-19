module nand_xor(output e,input c,d);
wire m,n,s,t,p;
nand g1(m,c);
nand g2(n,d);
nand g3(s,m,n);
nand g4(t,c,d);
nand g5(p,s,t);
nand out(e,p);
endmodule