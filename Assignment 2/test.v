module test(input a,output x,y,z);
assign x=a&1'bz;
assign y=a|1'bz;
assign z=(a^1'bz);
endmodule
