module nand_xor_data(output e,input c,d);
wire m,n,s,t,p;
assign m=~(c&c),
       n=~(d&d),
       s=~(m&n),
       t=~(c&d),
       p=~(s&t),
       e=~(p&p);		
endmodule
