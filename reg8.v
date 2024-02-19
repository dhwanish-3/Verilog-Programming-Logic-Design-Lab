module reg8bit(input [7:0]d,input reset,clk,output reg [7:0]q);
always@(posedge reset or posedge clk)
begin
if(reset)
q<=8'b00000000;
else
q<=d;
end
endmodule
