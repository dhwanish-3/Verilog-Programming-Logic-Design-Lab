module dFlipFlop_A(input d,clk,preset,clear,output reg q);
always@(posedge clk or negedge preset or negedge clear)
begin
if(~clear)
q<=0;
else if(~preset)
q<=1;
else if(clk)
q<=d;
end
endmodule
