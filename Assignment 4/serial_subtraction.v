module serial_subtraction(input [3:0]a,b,input clk,shift,clr,output reg [3:0]D,output reg bout);
reg d;
reg bin;
reg [3:0]wa,wb;
reg oa,ob;
always@(posedge clk)
begin
if(clk)
begin
if(clr)
begin
D=4'b0000;
bout=1'b0;
bin=1'b0;
wa=a;
wb=b;
end 
else if(shift)
begin
oa=wa[0];
ob=wb[0];
wa=Shift_Reg(wa);
wb=Shift_Reg(wb);
{bout,d}=FS(oa,ob,bin);
Shift_Reg_out(D,d);
bin=DFF(bout,(clk&shift));
end
end
end
function [3:0]Shift_Reg(input [3:0]si);
Shift_Reg={si[0],si[3:1]};
endfunction 
task Shift_Reg_out(output [3:0]sum,input si);
sum={si,sum[3:1]};
endtask 
function FS(input a,b,bin);
FS=a-b-bin;
endfunction 
function DFF(input D,clk);
begin
if(clk)
DFF=D;
else
DFF=1'b0;
end
endfunction
endmodule
