module nand_data(o4,a4,b4);
output o4;
input a4,b4;
assign o4=~(a4&b4);
endmodule