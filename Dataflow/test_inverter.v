module test_inverter;
reg i1;
wire o1;
initial
begin
i1=0;
#50 i1=1;
end
inverter_behavioral inst(i1,o1);
endmodule
