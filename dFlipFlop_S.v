module dFlipFlop_S(input d,clk,preset,clear,output reg q);
always@(posedge clk or negedge preset or negedge clear)
begin
if(clk)
begin
if(~clear)
q<=0;
else if(~preset)
q<=1;
else
q<=d;
end
end
endmodule