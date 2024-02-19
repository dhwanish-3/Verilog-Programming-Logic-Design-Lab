module test_array_and;
reg [0:15]a,b;
wire [0:15]o;
array_nor_gate insta(.o(o),.a(a),.b(b));
initial begin
a=$random();b=$random();
#50 a=$random();b=$random();
#50 a=$random();b=$random();
#50 a=$random();b=$random();
#50 a=$random();b=$random();
#50 a=$random();b=$random();
#50 a=$random();b=$random();
#50 a=$random();b=$random();
end
endmodule
