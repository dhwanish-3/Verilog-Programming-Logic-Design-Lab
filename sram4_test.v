module sram4_test; 
reg[3:0]a; 
reg d; 
reg [1:0]b,c; 
wire [3:0]o; 
sram4 insta(a,b,c,d,o);
initial begin 
a=4'b0000; 
b=2'b00; 
c=2'b00; 
d=1'b0;
repeat(256) 
begin 
#10 b=b+2'b01; 
#15 c=c+2'b01; 
#20 a=a+4'b0001; 
#25 d=~d; 
end 
end
endmodule 