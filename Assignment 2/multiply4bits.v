module multiply4bits(input [3:0]a,b,output reg [7:0]product);
reg t1,t2,t3,t4,t5,t6;
reg w1,w2,w3,w4,w5,w6;
reg s1,s2,s3,s4,s5;
always@(*)
begin
product[0]=a[0]&b[0];
product[1]=HAsum((a[1]&b[0]),(a[0]&b[1]));
t1=HAcarry((a[1]&b[0]),(a[0]&b[1]));
t2=FAsum((a[1]&b[1]),(a[0]&b[2]),t1);
t3=FAcarry((a[1]&b[1]),(a[0]&b[2]),t1);
t4=FAsum((a[1]&b[2]),(a[0]&b[3]),t3);
t5=FAcarry((a[1]&b[2]),(a[0]&b[3]),t3);
t6=HAsum((a[1]&b[3]),t5);
w1=HAcarry((a[1]&b[3]),t5);
product[2]=HAsum(t2,(a[2]&b[0]));
s3=HAcarry(t2,(a[2]&b[0]));
s2=FAsum(t4,(a[2]&b[1]),s3);
s4=FAcarry(t4,(a[2]&b[1]),s3);
s1=FAsum(t6,(a[2]&b[2]),s4);
s5=FAcarry(t6,(a[2]&b[2]),s4);
w3=FAsum(w1,(a[2]&b[3]),s5);
w2=FAcarry(w1,(a[2]&b[3]),s5);
product[3]=HAsum(s2,(a[3]&b[0]));
w6=HAcarry(s2,(a[3]&b[0]));
product[4]=FAsum(s1,(a[3]&b[1]),w6);
w5=FAcarry(s1,(a[3]&b[1]),w6);
product[5]=FAsum(w3,(a[3]&b[2]),w5);
w4=FAcarry(w3,(a[3]&b[2]),w5);
product[6]=FAsum(w2,(a[3]&b[3]),w4);
product[7]=FAcarry(w2,(a[3]&b[3]),w4);
end
function HAsum(input in1,in2);
HAsum=in1^in2;
endfunction
function HAcarry(input in1,in2);
HAcarry=in1&in2;
endfunction
function FAsum(input in1,in2,in3);
FAsum=in1^in2^in3;
endfunction
function FAcarry(input in1,in2,in3);
FAcarry=(in1&in2)|(in1&in3)|(in2&in3);
endfunction
endmodule
