module full_adder_data(output s,ca,input a,b,c);
wire p,q,r;
half_adder_data1 g1(p,q,a,b);
half_adder_data1 g2(s,r,p,c);
assign ca=q|r;
endmodule
