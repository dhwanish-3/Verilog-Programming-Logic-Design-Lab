module dLatch_test;
wire q;
reg clk,d,preset,clear;
dFlipFlop_S ghy(d,clk,preset,clear,q);
initial begin
clk=0;
repeat(16)
begin
clk=~clk;
#100;
end
end
initial begin
preset=0;
repeat(16)
begin
preset=~preset;
#55;
end
end
initial begin
clear=0;
repeat(16)
begin
clear=~clear;
#75;
end
end
initial begin
d=1;
repeat(16)
begin
d=~d;
#70;
end
end
endmodule
