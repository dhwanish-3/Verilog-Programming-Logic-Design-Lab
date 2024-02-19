module dLatch_S(input d,en,preset,clear,output reg q);
always@(*)
begin
if(en)
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
