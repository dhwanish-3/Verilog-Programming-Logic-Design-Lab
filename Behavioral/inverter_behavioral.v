module inverter_behavioral(i1,o1);
input i1;
output reg o1;
always@(i1)
begin
o1=~i1;
end
endmodule
