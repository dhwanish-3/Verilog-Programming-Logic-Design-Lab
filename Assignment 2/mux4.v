module mux4(input a,b,c,d,en,input [1:0]sel,output reg y);
reg [3:0]t;
reg [3:0]w;
reg m,n;
always@(*)
begin
w=decoder(en,sel);
t[0]=buffer(a,w[0]);
t[1]=buffer(b,w[1]);
t[2]=buffer(c,w[2]);
t[3]=buffer(d,w[3]);
y=sel[1]?(sel[0]?t[3]:t[1]):(sel[0]?t[2]:t[0]);
//m=(t[0]|t[1]|t[2]|t[3]);
//n=(~a|~b|~c|~d)&(t[0]&t[1]&t[2]&t[3]);
//y=m|n;
end
function [3:0]decoder(input en,input [1:0]sel);
begin
decoder[0]=en&(~sel[0]&~sel[1]);
decoder[1]=en&(~sel[0]&sel[1]);
decoder[2]=en&(sel[0]&~sel[1]);
decoder[3]=en&(sel[0]&sel[1]);
end
endfunction
function buffer(input in,enb);
begin
if(enb==1'b1)
buffer=in;
else
buffer=1'bz;
end
endfunction
endmodule
