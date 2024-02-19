module bcd_adder(input [3:0]a,b,input cin,output [3:0]s,output cout);
wire [4:0]temp;
wire w1,w2,w3;
wire [3:0]t;
ripple_carry h1(a,b,cin,temp[3:0],temp[4]);
and g1(w1,temp[3],temp[2]);
and g2(w2,temp[3],temp[1]);
or g3(cout,w1,w2,temp[4]);
and g4(t[0],1'b0,cout);
and g6(t[1],1'b1,cout);
and g7(t[2],1'b1,cout);
and g8(t[3],1'b0,cout);
ripple_carry h2(temp[3:0],t,1'b0,s,w3);  
endmodule
