module fun(input w,x,y,z,output f);
assign f=mux(w,x,y,z);
function mux(input w,x,y,z);
begin
mux=(z&~w)|(~z&w&~x&~y)|(1'b0&w&~x&y)|(z&w&x&~y)|(1'b1&w&x&y);
end
endfunction
//wire a,b,c,d,p;
//assign a=z&~w;
//assign b=~z&w&~x&~y;
//assign c=~(w&~x&y);
//assign d=z&w&x&~y;
//assign p=w&x&y;
//assign f=a|b|c|d|p;
endmodule
