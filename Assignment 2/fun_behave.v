module fun_behave(input w,x,y,z,output reg f);
reg a,b,c,d,p,q,r,s;
always@(*)
begin
//f=(z&~w)|(~z&w&~x&~y)|(0&w&~x&y)|(z&w&x&~y)|(1&w&x&y);
a=z&~w&~x&~y;
b=z&~w&~x&y;
c=z&~w&x&~y;
d=z&~w&x&y;
p=~z&w&~x&~y;
q=1'b0&w&~x&y;
r=z&w&x&~y;
s=1'b1&w&x&y;
f=a|b|c|d|p|q|r|s;
end
endmodule
