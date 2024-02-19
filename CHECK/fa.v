module fa(input a,b,cin,output reg s,cout);

always@(a,b,cin)
begin
s=a^b^cin;
cout=a&b|b&cin|a&cin;
end
endmodule
