module nand_not_b(output reg o,input a);
always @ (a)
begin
o=~(a&a);
end
endmodule
