module mux_four(input a,b,c,d,input [0:1]s,output out);
assign out=s[1]?(s[0]?d:b):(s[0]?c:a);
endmodule
