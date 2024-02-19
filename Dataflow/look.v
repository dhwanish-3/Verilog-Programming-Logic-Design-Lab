module look(input [3:0]a,b,input cin,output [3:0]s,output cout);
wire [3:0]p,g;
wire [4:0]c;
assign c[0]=cin;
assign p[0]=a[0]^b[0],
		 g[0]=a[0]&b[0],
		 s[0]=p[0]^c[0],
		 c[1]=g[0]|(p[0]&c[0]);
assign p[1]=a[1]^b[1],
		 g[1]=a[1]&b[1],
		 s[1]=p[1]^c[1],
		 c[2]=g[1]|(p[1]&c[1]);
assign p[2]=a[2]^b[2],
		 g[2]=a[2]&b[2],
		 s[2]=p[2]^c[2],
		 c[3]=g[2]|(p[2]&c[2]);
assign p[3]=a[3]^b[3],
		 g[3]=a[3]&b[3],
		 s[3]=p[3]^c[3],
		 c[4]=g[3]|(p[3]&c[3]);
assign cout=c[4];
endmodule
		 