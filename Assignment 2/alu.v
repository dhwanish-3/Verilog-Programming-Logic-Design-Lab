module alu(input [3:0]a,b,input [2:0]sel,output [3:0]out);
wire [3:0]add;
wire [3:0]sub,andg,org;
wire less;
assign andg=andgate(a,b);
assign org=orgate(a,b);
assign add=addition(a,b);
assign sub=subtract(a,b);
assign less=lessthan(a,b);
assign out=sel[2]?(sel[1]?(sel[0]?4'b0000:4'b0000):(sel[0]?4'b0000:less)):(sel[1]?(sel[0]?sub:add):(sel[0]?org:andg));
function [3:0]addition(input [3:0]a,b);
addition=a+b;
endfunction
function [3:0]andgate(input [3:0]a,b);
andgate=a&b;
endfunction
function [3:0]orgate(input [3:0]a,b);
orgate=a|b;
endfunction
function [3:0]subtract(input [3:0]a,b);
subtract=a-b;
endfunction
function lessthan(input [3:0]a,b);
lessthan=a<b;
endfunction
endmodule
