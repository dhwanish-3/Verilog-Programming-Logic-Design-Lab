module decoder(input [0:2]in,input en,output [7:0]out);
and g1(out[0],en,~in[0],~in[1],~in[2]);
and g2(out[1],en,~in[0],~in[1],in[2]);
and g3(out[2],en,~in[0],in[1],~in[2]);
and g4(out[3],en,~in[0],in[1],in[2]);
and g5(out[4],en,in[0],~in[1],~in[2]);
and g6(out[5],en,in[0],~in[1],in[2]);
and g7(out[6],en,in[0],in[1],~in[2]);
and g8(out[7],en,in[0],in[1],in[2]);
endmodule
