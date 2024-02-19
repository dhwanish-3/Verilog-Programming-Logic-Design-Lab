module unclockSRLatch_test;
wire q,qbar;
reg s,r;
unclockSRLatch test(s,r,q,qbar);
initial begin
s=1;r=0;
#20 s=0;r=0;
#20 s=0;r=1;
#20 s=0;r=0;
#20 s=1;r=1;
#20 s=0;r=1;
#20;
end
endmodule
