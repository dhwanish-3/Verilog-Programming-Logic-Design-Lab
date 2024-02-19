module decoder(input [2:0]in,input en,output reg [7:0]out);
always@(*)
begin
out=decode(in,en);
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