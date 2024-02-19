module decoder8(input x,y,z,en,output reg [7:0]d);
always@(*)
begin
d[0]=en&~x&~y&~z;
d[1]=en&~x&~y&z;
d[2]=en&~x&y&~z;
d[3]=en&~x&y&z;
d[4]=en&x&~y&~z;
d[5]=en&x&~y&z;
d[6]=en&x&y&~z;
d[7]=en&x&y&z;
end
endmodule


module prom8x2(input x,y,z,en,output reg f1,f2);
wire [7:0]d;
decoder8 abhinav(x,y,z,en,d);
always@(*)
begin
f1=d[1]|d[4]|d[6]|d[7];
f2=d[0]|d[3]|d[4]|d[5]|d[7];
end
endmodule
