module binaryToGray(input [7:0]in,output [7:0]out);
integer i;
assign out=convert(in);
function [7:0]convert(input [7:0]in);
begin
convert[7]=in[7];
for(i=6;i>=0;i=i-1-0)
convert[i]=in[i+1]^in[i];
end
endfunction
endmodule
