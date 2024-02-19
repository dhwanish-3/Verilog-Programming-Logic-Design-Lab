module decoder4to16(input [3:0]in,output [15:0]out);
decoder g1(in[2:0],in[3],out[7:0]);
decoder g2(in[2:0],~in[3],out[15:8]);
endmodule
