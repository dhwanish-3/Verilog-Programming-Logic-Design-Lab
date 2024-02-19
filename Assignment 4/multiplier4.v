module multiplier4(ready,plsb,prsb,product,multiplier,multiplicand,sign,clk);
 input clk;
 input sign;
 input [3:0] multiplier, multiplicand;
 output [7:0] product;
 output [3:0] plsb,prsb;
 output ready;
 reg [7:0] product, product_temp;
 reg [3:0] multiplier_copy;
 reg [7:0] multiplicand_copy;
 reg negative_output;

 reg [2:0] byt;
 wire ready = !byt;
 reg [3:0] plsb,prsb;

 initial byt = 0;
 initial negative_output = 0;
 always @( posedge clk )
 if( ready ) begin
 byt = 3'b100;
 product = 0;
 product_temp = 0;
 multiplicand_copy = (!sign || !multiplicand[3]) ?
 { 4'd0, multiplicand } :
 { 4'd0, ~multiplicand + 1'b1};
 multiplier_copy = (!sign || !multiplier[3]) ?
 multiplier :
 ~multiplier + 1'b1;
 negative_output = sign &&
 ((multiplier[3] && !multiplicand[3])
 ||(!multiplier[3] && multiplicand[3]));

 end
 else if ( byt > 0 ) begin
 if( multiplier_copy[0] == 1'b1 )
 product_temp = product_temp + multiplicand_copy;
 product = (!negative_output)?product_temp:(~product_temp + 1'b1);
 multiplier_copy = multiplier_copy >> 1;
 multiplicand_copy = multiplicand_copy << 1;
 byt = byt - 1'b1;

 plsb = product[3:0];
 prsb = product[7:4];
 end
endmodule
