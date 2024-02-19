module nor_3(output f,input x,y);
wire o;
nor g1(o,x,y);
nor out(f,o);
endmodule