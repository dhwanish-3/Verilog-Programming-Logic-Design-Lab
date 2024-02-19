module pal(input a,b,c,d,output reg f1,f2,f3);
reg w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11;
always@(*)
begin
w1=b&~d;
w2=~a&~c&d;
w3=~a&~b&c;
w4=a&b&c;
w5=~a&b;
w6=c&d;
w7=~a&c;
w8=~b&d;
w9=a&d;
w10=~a&b&~c;
w11=a&~b&c;
f1=w1|w2|w3|w4;
f2=w5|w6|w7|w8;
f3=w9|w10|w11|w8;
end
endmodule
