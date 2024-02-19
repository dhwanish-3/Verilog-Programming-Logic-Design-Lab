module array_nand_b(output reg [0:15]o,input [0:15]a,b);
always@(a,b)
begin
o=~(a|b);
end
endmodule
