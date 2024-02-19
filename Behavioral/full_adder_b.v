module full_adder_b(s,ca,a,b,c);
output reg s,ca;
input a,b,c;
reg p,q,r;
always@(a,b,c)
begin
//half_adder_b h1(p,q,a,b);
p=a^b;
q=a&b;
//half_adder_b h2(s,r,p,c);
s=p^c;
r=p&c;
ca=q|r;
end
endmodule
