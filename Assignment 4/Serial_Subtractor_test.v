module Serial_Subtractor_test; 
wire SI_A, SI_B; 
reg shift_control, clock, reset_b; 
 Serial_Subtractor M0 (SO, SI_A, SI_B, shift_control, clock, reset_b); 
initial #250 $finish;
initial begin clock = 0; forever #5 clock = ~clock; end
initial fork
 shift_control = 0; 
 #10 reset_b = 0; 
 #20 reset_b = 1; 
 #22 shift_control = 1; 
 #105 shift_control = 0; 
 #112 reset_b = 0; 
 #114 reset_b = 1; 
 #122 shift_control = 1; 
 #205 shift_control = 0; 
join
reg [7: 0] A, B, SO_reg; 
wire s7; 
assign s7 = SO_reg[7]; 
assign SI_A = A[0]; 
assign SI_B = B[0]; 
wire SI_B_bar = ~SI_B; 
initial fork
 A = 8'b10101010; 
 B = 8'b01011011; 
 #122 A = 8'b01011101; 
 #122 B = 8'b11111101; 
join
always @ (negedge clock, negedge reset_b) 
if (reset_b == 0) SO_reg <= 0; 
else if (shift_control == 1) begin
 SO_reg <= {SO, SO_reg[7: 1]}; 
 A <= A >> 1; 
 B <= B >> 1; 
end
wire negative = !M0.sum[1]; 
wire [7: 0] magnitude = (!negative)? SO_reg: 1'b1 + ~SO_reg; 
endmodule
