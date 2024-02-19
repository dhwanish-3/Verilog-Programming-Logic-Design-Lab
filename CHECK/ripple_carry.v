module ripple_carry(input [3:0]a,b,input cin,output [3:0]s,output cout);
wire c1,c2,c3;
fa g1(a[0],b[0],cin,s[0],c1);
fa g2(a[1],b[1],c1,s[1],c2);
fa g3(a[2],b[2],c2,s[2],c3);
fa g4(a[3],b[3],c3,s[3],cout);
endmodule
