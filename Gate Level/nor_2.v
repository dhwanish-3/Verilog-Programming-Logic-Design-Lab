module nor_2(output o,input a,b);
wire f1,f2;
nand g1(f1,a);
nand g2(f2,b);
nand out(o,f1,f2);
endmodule