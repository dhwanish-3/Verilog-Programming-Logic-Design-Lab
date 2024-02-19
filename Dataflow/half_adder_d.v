module half_adder_d(a,b,s,carry);
input a,b;
output s,carry;

assign s=a^b;
assign carry=a&b;
endmodule
