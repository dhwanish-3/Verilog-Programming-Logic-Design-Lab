module excess(input [0:3]a,output reg [0:3]s);
always@(a)
begin
s[0]=a[0]|a[1]&a[2]|a[1]&a[3];
s[1]=(~a[1]&a[2])|(~a[1]&a[3])|(a[1]&~a[2]&~a[3]);
s[2]=(a[2]&a[3])|(~a[2]&~a[3]);
s[3]=~a[3];
end
endmodule
