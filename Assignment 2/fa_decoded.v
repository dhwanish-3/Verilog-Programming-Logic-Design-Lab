module fa_decoded(input [2:0]in,output reg sum,carry);
reg [7:0]o;
always@(*)
begin
o=decode(in,0);
sum=o[1]|o[2]|o[4]|o[7];
carry=o[3]|o[5]|o[6]|o[7];
end
function [7:0]decode(input [2:0]in,input en);
begin
decode[0]=~en&(~in[2]&~in[1]&~in[0]);
decode[1]=~en&(~in[2]&~in[1]&in[0]);
decode[2]=~en&(~in[2]&in[1]&~in[0]);
decode[3]=~en&(~in[2]&in[1]&in[0]);
decode[4]=~en&(in[2]&~in[1]&~in[0]);
decode[5]=~en&(in[2]&~in[1]&in[0]);
decode[6]=~en&(in[2]&in[1]&~in[0]);
decode[7]=~en&(in[2]&in[1]&in[0]);
end
endfunction
endmodule
