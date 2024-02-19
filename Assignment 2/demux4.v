module demux4(input d,input [1:0]s,output reg [3:0]y);
always@(*)
begin
y=demux(d,s);
end
function [3:0]demux(input d,input [1:0]s);
begin
demux[0]=d&~s[1]&~s[0];
demux[1]=d&~s[1]&s[0];
demux[2]=d&s[1]&~s[0];
demux[3]=d&s[1]&s[0];
end
endfunction
endmodule
