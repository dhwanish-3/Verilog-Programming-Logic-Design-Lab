module or_behavioral(input a,b,output reg o);
always @ (a,b)
begin
o=a|b;
end
endmodule