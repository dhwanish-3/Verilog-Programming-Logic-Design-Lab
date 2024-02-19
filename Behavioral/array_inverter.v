module array_inverter(output reg [0:15]o,input [0:15]a);
always@(a)
begin
o=~a;
end
endmodule
