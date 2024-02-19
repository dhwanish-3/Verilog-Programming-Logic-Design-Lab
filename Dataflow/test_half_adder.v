module test_half_adder;
wire s,c;
reg a,b;
half_adder_data dut(.a(a),.b(b),.s(s),.c(c));
initial begin
a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
end
endmodule
