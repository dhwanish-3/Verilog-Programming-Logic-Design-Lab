module boo_behave(input a,b,c,output reg f);
always @ (a,b,c)
begin
f=!(!a&&b)||(b&&c)||(!a&&!b);
end
endmodule
