module bcd_3(input [11:0]a,b,input cin,output [11:0]s,output cout);
wire w1,w2;
bcd_adder h1(a[3:0],b[3:0],cin,s[3:0],w1);
bcd_adder h2(a[7:4],b[7:4],w1,s[7:4],w2);
bcd_adder h3(a[11:8],b[11:8],w2,s[11:8],cout);
endmodule
