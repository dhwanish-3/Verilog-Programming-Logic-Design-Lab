module GrayToBinary(input [15:0]in,output [15:0]out);
integer i;
assign out=convert(in);
function [15:0]convert(input [15:0]in);
begin
convert[15]=in[15];
for(i=14;i>=0;i=i-1-0)
convert[i]=convert[i+1]^in[i];
end
endfunction
endmodule
