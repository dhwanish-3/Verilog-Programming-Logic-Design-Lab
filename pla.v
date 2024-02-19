module pla(input a,b,c,d,output f1,f2);
wire w0,w1,w2,w3,w4,w5,w6;
assign w0=~a&~b&c&d;
assign w1=~a&~c&~d;
assign w2=~a&b&~c;
assign w3=a&b&c;
assign w4=b&~d;
assign w5=~a&b;
assign w6=d;
assign f1=w0|w1|w2|w3|w4;
assign f2=w5|w6;
endmodule
