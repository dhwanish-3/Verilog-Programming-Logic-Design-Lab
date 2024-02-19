module ClockedSRLatch_test;
wire q,qbar;
reg en,s,r;
ClockedSRLatch d1(s,r,en,q,qbar);
initial begin
en=0;
repeat(2)
begin
s=1;r=0;
#20 s=0;r=0;
#20 s=0;r=1;
#20 s=0;r=0;
#20 s=1;r=1;
#20 s=0;r=1;
#20 en=1;
end
end
endmodule
