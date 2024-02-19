module ClockedSRLatch(input s,r,en,output reg q,qbar);
always@(*)
begin
if(en)
begin
if(s!=r)
begin
q=s;qbar=r;
end
else if(s)
begin
q=1'bz;qbar=1'bz;
end
end
end
endmodule
