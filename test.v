module test; 
reg [7:0]write; 
reg clk,reset; 
reg [1:0]sel; 
wire [7:0]q; 
regfile insta(write,sel,reset,clk,q); 
initial begin 
clk=1'b0; 
repeat(366) 
begin 
#8 clk=~clk; 
end 
end
initial begin 
reset=1'b0; 
repeat(200) 
begin 
#20 reset=~reset; 
end 
end 
initial begin 
write=8'b00000000; 
sel=2'b00; 
repeat(256) 
begin 
#10 write=write+8'b00000001; 
#15 sel=sel+2'b01; 
end 
end
endmodule
