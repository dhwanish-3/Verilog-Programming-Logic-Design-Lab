module test2_in;
reg a4,b4;
wire o4;
initial
begin
a4=0;b4=0;
#10 a4=0;b4=1;
#10 a4=1;b4=0;
#10 a4=1;b4=1;
end
nand_data inst(o4,a4,b4);
endmodule
