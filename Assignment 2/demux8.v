module demux8(input d,input [2:0]s,output [7:0]y);
assign y=demux(d,s[2:0]);
function [7:0]demux(input d,input [2:0]s);
begin
demux[0]=d&~s[2]&~s[1]&~s[0];
demux[1]=d&~s[2]&~s[1]&s[0];
demux[2]=d&~s[2]&s[1]&~s[0];
demux[3]=d&~s[2]&s[1]&s[0];
demux[4]=d&s[2]&~s[1]&~s[0];
demux[5]=d&s[2]&~s[1]&s[0];
demux[6]=d&s[2]&s[1]&~s[0];
demux[7]=d&s[2]&s[1]&s[0];
end
endfunction
endmodule
