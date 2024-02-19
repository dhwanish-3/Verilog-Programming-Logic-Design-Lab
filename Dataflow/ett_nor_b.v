module ett_nor_b(output reg o,input [0:7]a);
always@(a)
begin
o=!(a[0]|a[1]|a[2]|a[3]|a[4]|a[5]|a[6]|a[7]);
end
endmodule
