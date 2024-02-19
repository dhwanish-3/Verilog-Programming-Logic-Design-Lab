module half_subtractor_test;
wire diff,borrow;
reg a,b;
half_subtractor inst(a,b,diff,borrow);
initial begin
//test(a,b);
a=0;b=0;
#20 a=0;b=1;
#20 a=1;b=0;
#20 a=1;b=1;
end
//task test(output a,b);
//begin
//a=0;b=0;
//#20 a=0;b=1;
//#20 a=1;b=0;
//#20 a=1;b=1;
//end
//endtask
endmodule
