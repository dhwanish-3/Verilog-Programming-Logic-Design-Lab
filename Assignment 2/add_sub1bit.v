module add_sub1bit(input a,b,cin,output reg add_sub,carry_borrow);
reg p,q,r,s,t,u,v;
reg x,y,z;
always@(*)
begin
p=FAsum(a,b,1'b0);
q=FAcarry(a,b,1'b0);
z=inverter(b);
x=FAsum(a,z,1'b1);
y=FAcarry(a,z,1'b1);
v=inverter(y);
add_sub=mux(p,x,cin);
carry_borrow=mux(q,v,cin);
end
function mux(input add,sub,cin);
mux=cin?sub:add;
endfunction
function FAsum(input a,b,cin);
FAsum=a^b^cin;
endfunction
function FAcarry(input a,b,cin);
FAcarry=(a&b)|(a&cin)|(b&cin);
endfunction
function inverter(input in);
inverter=~in;
endfunction
endmodule
