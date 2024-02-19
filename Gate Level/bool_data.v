module bool_data(output f,input a,b,c);
assign f=~(~a&b)|(b&c)|(~a&~b);
endmodule