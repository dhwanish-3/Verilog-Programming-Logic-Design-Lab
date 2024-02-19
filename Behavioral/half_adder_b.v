module half_adder_b(s,c,a,b);
input a,b;
output reg s,c;
always@(a,b)
begin
s=a^b;
c=a&b;
end
endmodule
