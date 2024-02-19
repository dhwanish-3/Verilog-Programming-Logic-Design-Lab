module sram_test; 
reg [1:0]a; 
reg c,d; 
reg [1:0]b; 
wire [1:0]o; 
sram insta(a,b,c,d,o); 
initial begin 
a=2'b00; 
b=2'b00; 
c=1'b0; 
d=1'b0; 
repeat(256) 
begin 
#10 b=b+2'b01; 
#10 a=a+2'b01; 
#10 c=~c; 
#10 d=~d; 
end 
end
endmodule
