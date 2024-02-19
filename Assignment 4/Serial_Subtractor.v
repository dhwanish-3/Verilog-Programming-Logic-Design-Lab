module Serial_Subtractor (output SO, input SI_A, SI_B, shift_control, clock, reset_b); 
reg [1: 0] sum; 
wire mem = sum[1]; 
assign SO = sum[0]; 
always @ (posedge clock, negedge reset_b) 
if (reset_b == 0) begin
 sum <= 2'b00; 
end
else if (shift_control) begin
 sum <= SI_A + (!SI_B) + sum[1]; 
end
endmodule
