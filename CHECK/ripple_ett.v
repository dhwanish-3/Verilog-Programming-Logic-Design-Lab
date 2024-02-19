module ripple_ett(input [7:0]a,b,input cin,output [7:0]s,output cout);
wire w1;
ripple_carry g1(a[3:0],b[3:0],cin,s[3:0],w1);
ripple_carry g2(a[7:4],b[7:4],w1,s[7:4],cout);
endmodule
