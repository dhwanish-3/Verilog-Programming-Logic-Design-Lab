module nand_and_b(output reg o,input a,b);
reg f;
always @ (a,b)
begin
f=!(a||b);
o=!(f&f);
end
endmodule
