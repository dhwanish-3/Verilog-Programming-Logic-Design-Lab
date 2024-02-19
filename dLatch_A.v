module dLatch_A(input d,en,preset,clear,output reg q);
always@(*)
begin
if(~clear)
q<=0;
else if(~preset)
q<=1;
else if(en)
q<=d;
end
endmodule