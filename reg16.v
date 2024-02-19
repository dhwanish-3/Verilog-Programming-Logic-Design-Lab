module reg16(input [15:0]d,input reset,clk,output reg [15:0]q);
always@(posedge reset or posedge clk)
begin
if(reset)
q<=16'b0000000000000000;
else
q<=d;
end
endmodule
