module half_adder_data(output s,c,input a,b);
assign s=a^b;
assign c=a&b;
endmodule
