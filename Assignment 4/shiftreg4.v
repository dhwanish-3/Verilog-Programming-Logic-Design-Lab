module shiftreg4(input [3:0]i,input clk,clr,output reg [3:0]o);
always@(posedge clk,posedge clr)
begin
if(clr)
o=4'b0000;
else if(clk)
//o={i[0],i[3:1]};
o=(i>>1'b1);
end
endmodule
