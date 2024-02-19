module quadruple(input [3:0]a,b,input sel,output reg [3:0]y);
always@(*)
begin
y=quad(a,b,sel);
end
function [3:0]quad(input [3:0]a,b,input sel);
begin
case(sel)
1'b0:quad=a;
1'b1:quad=b;
endcase
end
endfunction
endmodule
